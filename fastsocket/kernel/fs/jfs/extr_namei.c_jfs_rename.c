
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int tid_t ;
struct tlock {int lock; } ;
struct TYPE_6__ {struct inode* ip; } ;
struct tblock {TYPE_1__ u; int xflag; } ;
struct metapage {int dummy; } ;
struct lv {int length; scalar_t__ offset; } ;
struct inode {scalar_t__ i_ino; scalar_t__ i_nlink; int i_size; int i_mode; int i_sb; void* i_mtime; void* i_ctime; } ;
struct dt_lock {scalar_t__ index; struct lv* lv; } ;
struct TYPE_9__ {int name; } ;
struct dentry {struct inode* d_inode; TYPE_4__ d_name; } ;
struct component_name {int dummy; } ;
struct btstack {int dummy; } ;
typedef int s64 ;
typedef scalar_t__ ino_t ;
struct TYPE_7__ {int idotdot; } ;
struct TYPE_8__ {TYPE_2__ header; } ;
struct TYPE_10__ {int commit_mutex; int bxflag; TYPE_3__ i_dtroot; } ;


 int ASSERT (int) ;
 int COMMIT_DELETE ;
 int COMMIT_MUTEX_CHILD ;
 int COMMIT_MUTEX_PARENT ;
 int COMMIT_MUTEX_SECOND_PARENT ;
 int COMMIT_MUTEX_VICTIM ;
 int COMMIT_Nolink ;
 int COMMIT_SYNC ;
 int COMMIT_Stale ;
 void* CURRENT_TIME ;
 int EIO ;
 int EMLINK ;
 int ENOENT ;
 int ENOTEMPTY ;
 int ESTALE ;
 int IWRITE_LOCK (struct inode*,int ) ;
 int IWRITE_UNLOCK (struct inode*) ;
 int JFS_CREATE ;
 TYPE_5__* JFS_IP (struct inode*) ;
 scalar_t__ JFS_LINK_MAX ;
 int JFS_LOOKUP ;
 int JFS_REMOVE ;
 int JFS_RENAME ;
 int RDWRLOCK_NORMAL ;
 scalar_t__ S_ISDIR (int ) ;
 int assert (int) ;
 int clear_cflag (int ,struct inode*) ;
 int commitZeroLink (int ,struct inode*) ;
 int cpu_to_le32 (scalar_t__) ;
 void* current_fs_time (int ) ;
 int drop_nlink (struct inode*) ;
 int dtDelete (int ,struct inode*,struct component_name*,scalar_t__*,int ) ;
 int dtEmpty (struct inode*) ;
 int dtInsert (int ,struct inode*,struct component_name*,scalar_t__*,struct btstack*) ;
 int dtModify (int ,struct inode*,struct component_name*,scalar_t__*,scalar_t__,int ) ;
 int dtSearch (struct inode*,struct component_name*,scalar_t__*,struct btstack*,int ) ;
 int free_UCSname (struct component_name*) ;
 int get_UCSname (struct component_name*,struct dentry*) ;
 int inc_nlink (struct inode*) ;
 int jfs_err (char*,...) ;
 int jfs_error (int ,char*) ;
 int jfs_info (char*,int,...) ;
 int jfs_truncate_nolock (struct inode*,int ) ;
 int mark_inode_dirty (struct inode*) ;
 int mutex_lock (int *) ;
 int mutex_lock_nested (int *,int ) ;
 int mutex_unlock (int *) ;
 int set_cflag (int ,struct inode*) ;
 scalar_t__ test_cflag (int ,struct inode*) ;
 struct tblock* tid_to_tblock (int ) ;
 int tlckBTROOT ;
 int tlckDTREE ;
 int tlckRELINK ;
 int txAbort (int ,int) ;
 int txBegin (int ,int ) ;
 int txCommit (int ,int,struct inode**,int) ;
 int txEnd (int ) ;
 struct tlock* txLock (int ,struct inode*,struct metapage*,int) ;
 int vfs_dq_init (struct inode*) ;
 int xtTruncate_pmap (int ,struct inode*,int) ;

__attribute__((used)) static int jfs_rename(struct inode *old_dir, struct dentry *old_dentry,
        struct inode *new_dir, struct dentry *new_dentry)
{
 struct btstack btstack;
 ino_t ino;
 struct component_name new_dname;
 struct inode *new_ip;
 struct component_name old_dname;
 struct inode *old_ip;
 int rc;
 tid_t tid;
 struct tlock *tlck;
 struct dt_lock *dtlck;
 struct lv *lv;
 int ipcount;
 struct inode *iplist[4];
 struct tblock *tblk;
 s64 new_size = 0;
 int commit_flag;


 jfs_info("jfs_rename: %s %s", old_dentry->d_name.name,
   new_dentry->d_name.name);

 old_ip = old_dentry->d_inode;
 new_ip = new_dentry->d_inode;

 if ((rc = get_UCSname(&old_dname, old_dentry)))
  goto out1;

 if ((rc = get_UCSname(&new_dname, new_dentry)))
  goto out2;




 rc = dtSearch(old_dir, &old_dname, &ino, &btstack, JFS_LOOKUP);
 if (rc || (ino != old_ip->i_ino)) {
  rc = -ENOENT;
  goto out3;
 }




 rc = dtSearch(new_dir, &new_dname, &ino, &btstack, JFS_LOOKUP);
 if (!rc) {
  if ((!new_ip) || (ino != new_ip->i_ino)) {
   rc = -ESTALE;
   goto out3;
  }
 } else if (rc != -ENOENT)
  goto out3;
 else if (new_ip) {

  rc = -ESTALE;
  goto out3;
 }

 if (S_ISDIR(old_ip->i_mode)) {
  if (new_ip) {
   if (!dtEmpty(new_ip)) {
    rc = -ENOTEMPTY;
    goto out3;
   }
  } else if ((new_dir != old_dir) &&
      (new_dir->i_nlink == JFS_LINK_MAX)) {
   rc = -EMLINK;
   goto out3;
  }
 } else if (new_ip) {
  IWRITE_LOCK(new_ip, RDWRLOCK_NORMAL);

  vfs_dq_init(new_ip);
 }




 tid = txBegin(new_dir->i_sb, 0);







 mutex_lock_nested(&JFS_IP(new_dir)->commit_mutex, COMMIT_MUTEX_PARENT);
 mutex_lock_nested(&JFS_IP(old_ip)->commit_mutex, COMMIT_MUTEX_CHILD);
 if (old_dir != new_dir)
  mutex_lock_nested(&JFS_IP(old_dir)->commit_mutex,
      COMMIT_MUTEX_SECOND_PARENT);

 if (new_ip) {
  mutex_lock_nested(&JFS_IP(new_ip)->commit_mutex,
      COMMIT_MUTEX_VICTIM);



  ino = new_ip->i_ino;
  rc = dtModify(tid, new_dir, &new_dname, &ino,
         old_ip->i_ino, JFS_RENAME);
  if (rc)
   goto out4;
  drop_nlink(new_ip);
  if (S_ISDIR(new_ip->i_mode)) {
   drop_nlink(new_ip);
   if (new_ip->i_nlink) {
    mutex_unlock(&JFS_IP(new_ip)->commit_mutex);
    if (old_dir != new_dir)
     mutex_unlock(&JFS_IP(old_dir)->commit_mutex);
    mutex_unlock(&JFS_IP(old_ip)->commit_mutex);
    mutex_unlock(&JFS_IP(new_dir)->commit_mutex);
    if (!S_ISDIR(old_ip->i_mode) && new_ip)
     IWRITE_UNLOCK(new_ip);
    jfs_error(new_ip->i_sb,
       "jfs_rename: new_ip->i_nlink != 0");
    return -EIO;
   }
   tblk = tid_to_tblock(tid);
   tblk->xflag |= COMMIT_DELETE;
   tblk->u.ip = new_ip;
  } else if (new_ip->i_nlink == 0) {
   assert(!test_cflag(COMMIT_Nolink, new_ip));

   if ((new_size = commitZeroLink(tid, new_ip)) < 0) {
    txAbort(tid, 1);
    rc = new_size;
    goto out4;
   }
   tblk = tid_to_tblock(tid);
   tblk->xflag |= COMMIT_DELETE;
   tblk->u.ip = new_ip;
  } else {
   new_ip->i_ctime = CURRENT_TIME;
   mark_inode_dirty(new_ip);
  }
 } else {



  rc = dtSearch(new_dir, &new_dname, &ino, &btstack,
         JFS_CREATE);
  if (rc) {
   jfs_err("jfs_rename didn't expect dtSearch to fail "
    "w/rc = %d", rc);
   goto out4;
  }

  ino = old_ip->i_ino;
  rc = dtInsert(tid, new_dir, &new_dname, &ino, &btstack);
  if (rc) {
   if (rc == -EIO)
    jfs_err("jfs_rename: dtInsert returned -EIO");
   goto out4;
  }
  if (S_ISDIR(old_ip->i_mode))
   inc_nlink(new_dir);
 }




 ino = old_ip->i_ino;
 rc = dtDelete(tid, old_dir, &old_dname, &ino, JFS_REMOVE);
 if (rc) {
  jfs_err("jfs_rename did not expect dtDelete to return rc = %d",
   rc);
  txAbort(tid, 1);
  goto out4;
 }
 if (S_ISDIR(old_ip->i_mode)) {
  drop_nlink(old_dir);
  if (old_dir != new_dir) {




   JFS_IP(old_ip)->i_dtroot.header.idotdot =
    cpu_to_le32(new_dir->i_ino);


   tlck = txLock(tid, old_ip,
        (struct metapage *) &JFS_IP(old_ip)->bxflag,
          tlckDTREE | tlckBTROOT | tlckRELINK);
   dtlck = (struct dt_lock *) & tlck->lock;
   ASSERT(dtlck->index == 0);
   lv = & dtlck->lv[0];
   lv->offset = 0;
   lv->length = 1;
   dtlck->index++;
  }
 }




 old_ip->i_ctime = CURRENT_TIME;
 mark_inode_dirty(old_ip);

 new_dir->i_ctime = new_dir->i_mtime = current_fs_time(new_dir->i_sb);
 mark_inode_dirty(new_dir);


 ipcount = 0;
 iplist[ipcount++] = old_ip;
 if (new_ip)
  iplist[ipcount++] = new_ip;
 iplist[ipcount++] = old_dir;

 if (old_dir != new_dir) {
  iplist[ipcount++] = new_dir;
  old_dir->i_ctime = old_dir->i_mtime = CURRENT_TIME;
  mark_inode_dirty(old_dir);
 }






 if (new_size)
  commit_flag = COMMIT_SYNC;
 else
  commit_flag = 0;

 rc = txCommit(tid, ipcount, iplist, commit_flag);

      out4:
 txEnd(tid);
 if (new_ip)
  mutex_unlock(&JFS_IP(new_ip)->commit_mutex);
 if (old_dir != new_dir)
  mutex_unlock(&JFS_IP(old_dir)->commit_mutex);
 mutex_unlock(&JFS_IP(old_ip)->commit_mutex);
 mutex_unlock(&JFS_IP(new_dir)->commit_mutex);

 while (new_size && (rc == 0)) {
  tid = txBegin(new_ip->i_sb, 0);
  mutex_lock(&JFS_IP(new_ip)->commit_mutex);
  new_size = xtTruncate_pmap(tid, new_ip, new_size);
  if (new_size < 0) {
   txAbort(tid, 1);
   rc = new_size;
  } else
   rc = txCommit(tid, 1, &new_ip, COMMIT_SYNC);
  txEnd(tid);
  mutex_unlock(&JFS_IP(new_ip)->commit_mutex);
 }
 if (new_ip && (new_ip->i_nlink == 0))
  set_cflag(COMMIT_Nolink, new_ip);
      out3:
 free_UCSname(&new_dname);
      out2:
 free_UCSname(&old_dname);
      out1:
 if (new_ip && !S_ISDIR(new_ip->i_mode))
  IWRITE_UNLOCK(new_ip);




 if (test_cflag(COMMIT_Stale, old_dir)) {
  if (old_dir->i_size > 1)
   jfs_truncate_nolock(old_dir, 0);

  clear_cflag(COMMIT_Stale, old_dir);
 }

 jfs_info("jfs_rename: returning %d", rc);
 return rc;
}
