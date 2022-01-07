
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int tid_t ;
struct TYPE_6__ {struct inode* ip; } ;
struct tblock {TYPE_2__ u; int xflag; } ;
struct inode {int i_size; int i_mtime; int i_ctime; int i_ino; int i_sb; } ;
struct TYPE_5__ {int name; } ;
struct dentry {TYPE_1__ d_name; struct inode* d_inode; } ;
struct component_name {int dummy; } ;
typedef int ino_t ;
struct TYPE_7__ {int flag; } ;
struct TYPE_8__ {int commit_mutex; TYPE_3__ acl; TYPE_3__ ea; } ;


 int COMMIT_DELETE ;
 int COMMIT_MUTEX_CHILD ;
 int COMMIT_MUTEX_PARENT ;
 int COMMIT_Stale ;
 int CURRENT_TIME ;
 int DXD_EXTENT ;
 int EIO ;
 int ENOTEMPTY ;
 TYPE_4__* JFS_IP (struct inode*) ;
 int JFS_REMOVE ;
 int clear_cflag (int ,struct inode*) ;
 int clear_nlink (struct inode*) ;
 int dtDelete (int ,struct inode*,struct component_name*,int *,int ) ;
 int dtEmpty (struct inode*) ;
 int free_UCSname (struct component_name*) ;
 int get_UCSname (struct component_name*,struct dentry*) ;
 int inode_dec_link_count (struct inode*) ;
 int jfs_err (char*,int) ;
 int jfs_info (char*,...) ;
 int jfs_truncate_nolock (struct inode*,int ) ;
 int mark_inode_dirty (struct inode*) ;
 int mutex_lock_nested (int *,int ) ;
 int mutex_unlock (int *) ;
 scalar_t__ test_cflag (int ,struct inode*) ;
 struct tblock* tid_to_tblock (int ) ;
 int txAbort (int ,int) ;
 int txBegin (int ,int ) ;
 int txCommit (int ,int,struct inode**,int ) ;
 int txEA (int ,struct inode*,TYPE_3__*,int *) ;
 int txEnd (int ) ;
 int vfs_dq_init (struct inode*) ;

__attribute__((used)) static int jfs_rmdir(struct inode *dip, struct dentry *dentry)
{
 int rc;
 tid_t tid;
 struct inode *ip = dentry->d_inode;
 ino_t ino;
 struct component_name dname;
 struct inode *iplist[2];
 struct tblock *tblk;

 jfs_info("jfs_rmdir: dip:0x%p name:%s", dip, dentry->d_name.name);


 vfs_dq_init(ip);


 if (!dtEmpty(ip)) {
  rc = -ENOTEMPTY;
  goto out;
 }

 if ((rc = get_UCSname(&dname, dentry))) {
  goto out;
 }

 tid = txBegin(dip->i_sb, 0);

 mutex_lock_nested(&JFS_IP(dip)->commit_mutex, COMMIT_MUTEX_PARENT);
 mutex_lock_nested(&JFS_IP(ip)->commit_mutex, COMMIT_MUTEX_CHILD);

 iplist[0] = dip;
 iplist[1] = ip;

 tblk = tid_to_tblock(tid);
 tblk->xflag |= COMMIT_DELETE;
 tblk->u.ip = ip;




 ino = ip->i_ino;
 if ((rc = dtDelete(tid, dip, &dname, &ino, JFS_REMOVE))) {
  jfs_err("jfs_rmdir: dtDelete returned %d", rc);
  if (rc == -EIO)
   txAbort(tid, 1);
  txEnd(tid);
  mutex_unlock(&JFS_IP(ip)->commit_mutex);
  mutex_unlock(&JFS_IP(dip)->commit_mutex);

  goto out2;
 }




 dip->i_ctime = dip->i_mtime = CURRENT_TIME;
 inode_dec_link_count(dip);





 if (JFS_IP(ip)->ea.flag & DXD_EXTENT) {

  txEA(tid, ip, &JFS_IP(ip)->ea, ((void*)0));
 }
 JFS_IP(ip)->ea.flag = 0;


 if (JFS_IP(ip)->acl.flag & DXD_EXTENT) {

  txEA(tid, ip, &JFS_IP(ip)->acl, ((void*)0));
 }
 JFS_IP(ip)->acl.flag = 0;


 clear_nlink(ip);
 mark_inode_dirty(ip);

 rc = txCommit(tid, 2, &iplist[0], 0);

 txEnd(tid);

 mutex_unlock(&JFS_IP(ip)->commit_mutex);
 mutex_unlock(&JFS_IP(dip)->commit_mutex);





 if (test_cflag(COMMIT_Stale, dip)) {
  if (dip->i_size > 1)
   jfs_truncate_nolock(dip, 0);

  clear_cflag(COMMIT_Stale, dip);
 }

      out2:
 free_UCSname(&dname);

      out:
 jfs_info("jfs_rmdir: rc:%d", rc);
 return rc;
}
