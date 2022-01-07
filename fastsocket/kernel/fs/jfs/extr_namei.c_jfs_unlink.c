
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int tid_t ;
struct TYPE_5__ {struct inode* ip; } ;
struct tblock {TYPE_2__ u; int xflag; } ;
struct inode {scalar_t__ i_nlink; int i_size; int i_sb; int i_mtime; int i_ctime; int i_ino; } ;
struct TYPE_4__ {int name; } ;
struct dentry {TYPE_1__ d_name; struct inode* d_inode; } ;
struct component_name {int dummy; } ;
typedef int s64 ;
typedef int ino_t ;
struct TYPE_6__ {int commit_mutex; } ;


 int ASSERT (scalar_t__) ;
 int COMMIT_DELETE ;
 int COMMIT_MUTEX_CHILD ;
 int COMMIT_MUTEX_PARENT ;
 int COMMIT_Nolink ;
 int COMMIT_SYNC ;
 int COMMIT_Stale ;
 int CURRENT_TIME ;
 int EIO ;
 int IWRITE_LOCK (struct inode*,int ) ;
 int IWRITE_UNLOCK (struct inode*) ;
 TYPE_3__* JFS_IP (struct inode*) ;
 int JFS_REMOVE ;
 int RDWRLOCK_NORMAL ;
 int assert (int) ;
 int clear_cflag (int ,struct inode*) ;
 int commitZeroLink (int ,struct inode*) ;
 int dtDelete (int ,struct inode*,struct component_name*,int *,int ) ;
 int free_UCSname (struct component_name*) ;
 int get_UCSname (struct component_name*,struct dentry*) ;
 int inode_dec_link_count (struct inode*) ;
 int jfs_err (char*,int) ;
 int jfs_info (char*,...) ;
 int jfs_truncate_nolock (struct inode*,int ) ;
 int mark_inode_dirty (struct inode*) ;
 int mutex_lock (int *) ;
 int mutex_lock_nested (int *,int ) ;
 int mutex_unlock (int *) ;
 int set_cflag (int ,struct inode*) ;
 scalar_t__ test_cflag (int ,struct inode*) ;
 struct tblock* tid_to_tblock (int ) ;
 int txAbort (int ,int) ;
 int txBegin (int ,int ) ;
 int txCommit (int ,int,struct inode**,int) ;
 int txEnd (int ) ;
 int vfs_dq_init (struct inode*) ;
 int xtTruncate_pmap (int ,struct inode*,int) ;

__attribute__((used)) static int jfs_unlink(struct inode *dip, struct dentry *dentry)
{
 int rc;
 tid_t tid;
 struct inode *ip = dentry->d_inode;
 ino_t ino;
 struct component_name dname;
 struct inode *iplist[2];
 struct tblock *tblk;
 s64 new_size = 0;
 int commit_flag;

 jfs_info("jfs_unlink: dip:0x%p name:%s", dip, dentry->d_name.name);


 vfs_dq_init(ip);

 if ((rc = get_UCSname(&dname, dentry)))
  goto out;

 IWRITE_LOCK(ip, RDWRLOCK_NORMAL);

 tid = txBegin(dip->i_sb, 0);

 mutex_lock_nested(&JFS_IP(dip)->commit_mutex, COMMIT_MUTEX_PARENT);
 mutex_lock_nested(&JFS_IP(ip)->commit_mutex, COMMIT_MUTEX_CHILD);

 iplist[0] = dip;
 iplist[1] = ip;




 ino = ip->i_ino;
 if ((rc = dtDelete(tid, dip, &dname, &ino, JFS_REMOVE))) {
  jfs_err("jfs_unlink: dtDelete returned %d", rc);
  if (rc == -EIO)
   txAbort(tid, 1);
  txEnd(tid);
  mutex_unlock(&JFS_IP(ip)->commit_mutex);
  mutex_unlock(&JFS_IP(dip)->commit_mutex);
  IWRITE_UNLOCK(ip);
  goto out1;
 }

 ASSERT(ip->i_nlink);

 ip->i_ctime = dip->i_ctime = dip->i_mtime = CURRENT_TIME;
 mark_inode_dirty(dip);


 inode_dec_link_count(ip);




 if (ip->i_nlink == 0) {
  assert(!test_cflag(COMMIT_Nolink, ip));

  if ((new_size = commitZeroLink(tid, ip)) < 0) {
   txAbort(tid, 1);
   txEnd(tid);
   mutex_unlock(&JFS_IP(ip)->commit_mutex);
   mutex_unlock(&JFS_IP(dip)->commit_mutex);
   IWRITE_UNLOCK(ip);
   rc = new_size;
   goto out1;
  }
  tblk = tid_to_tblock(tid);
  tblk->xflag |= COMMIT_DELETE;
  tblk->u.ip = ip;
 }






 if (new_size)
  commit_flag = COMMIT_SYNC;
 else
  commit_flag = 0;





 rc = txCommit(tid, 2, &iplist[0], commit_flag);

 txEnd(tid);

 mutex_unlock(&JFS_IP(ip)->commit_mutex);
 mutex_unlock(&JFS_IP(dip)->commit_mutex);

 while (new_size && (rc == 0)) {
  tid = txBegin(dip->i_sb, 0);
  mutex_lock(&JFS_IP(ip)->commit_mutex);
  new_size = xtTruncate_pmap(tid, ip, new_size);
  if (new_size < 0) {
   txAbort(tid, 1);
   rc = new_size;
  } else
   rc = txCommit(tid, 2, &iplist[0], COMMIT_SYNC);
  txEnd(tid);
  mutex_unlock(&JFS_IP(ip)->commit_mutex);
 }

 if (ip->i_nlink == 0)
  set_cflag(COMMIT_Nolink, ip);

 IWRITE_UNLOCK(ip);





 if (test_cflag(COMMIT_Stale, dip)) {
  if (dip->i_size > 1)
   jfs_truncate_nolock(dip, 0);

  clear_cflag(COMMIT_Stale, dip);
 }

      out1:
 free_UCSname(&dname);
      out:
 jfs_info("jfs_unlink: rc:%d", rc);
 return rc;
}
