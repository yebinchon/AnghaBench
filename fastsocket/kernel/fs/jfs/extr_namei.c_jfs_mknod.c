
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int tid_t ;
struct TYPE_4__ {int ixpxd; } ;
struct tblock {TYPE_2__ u; int ino; int xflag; } ;
struct jfs_inode_info {int commit_mutex; int dev; int ixpxd; } ;
struct inode {scalar_t__ i_nlink; int i_mtime; int i_ctime; int i_mode; int * i_op; int i_ino; int i_sb; } ;
struct TYPE_3__ {int name; } ;
struct dentry {TYPE_1__ d_name; } ;
struct component_name {int dummy; } ;
struct btstack {int dummy; } ;
typedef int ino_t ;
typedef int dev_t ;


 int COMMIT_CREATE ;
 int COMMIT_MUTEX_CHILD ;
 int COMMIT_MUTEX_PARENT ;
 int CURRENT_TIME ;
 int EINVAL ;
 scalar_t__ IS_ERR (struct inode*) ;
 int JFS_CREATE ;
 struct jfs_inode_info* JFS_IP (struct inode*) ;
 int PTR_ERR (struct inode*) ;
 int d_instantiate (struct dentry*,struct inode*) ;
 int dtInsert (int ,struct inode*,struct component_name*,int *,struct btstack*) ;
 int dtSearch (struct inode*,struct component_name*,int *,struct btstack*,int ) ;
 int free_UCSname (struct component_name*) ;
 int free_ea_wmap (struct inode*) ;
 int get_UCSname (struct component_name*,struct dentry*) ;
 struct inode* ialloc (struct inode*,int) ;
 int init_special_inode (struct inode*,int ,int ) ;
 int iput (struct inode*) ;
 int jfs_file_inode_operations ;
 int jfs_info (char*,int) ;
 int jfs_init_acl (int ,struct inode*,struct inode*) ;
 int jfs_init_security (int ,struct inode*,struct inode*) ;
 int mark_inode_dirty (struct inode*) ;
 int mutex_lock_nested (int *,int ) ;
 int mutex_unlock (int *) ;
 int new_encode_dev (int ) ;
 int new_valid_dev (int ) ;
 struct tblock* tid_to_tblock (int ) ;
 int txAbort (int ,int ) ;
 int txBegin (int ,int ) ;
 int txCommit (int ,int,struct inode**,int ) ;
 int txEnd (int ) ;
 int unlock_new_inode (struct inode*) ;

__attribute__((used)) static int jfs_mknod(struct inode *dir, struct dentry *dentry,
  int mode, dev_t rdev)
{
 struct jfs_inode_info *jfs_ip;
 struct btstack btstack;
 struct component_name dname;
 ino_t ino;
 struct inode *ip;
 struct inode *iplist[2];
 int rc;
 tid_t tid;
 struct tblock *tblk;

 if (!new_valid_dev(rdev))
  return -EINVAL;

 jfs_info("jfs_mknod: %s", dentry->d_name.name);

 if ((rc = get_UCSname(&dname, dentry)))
  goto out;

 ip = ialloc(dir, mode);
 if (IS_ERR(ip)) {
  rc = PTR_ERR(ip);
  goto out1;
 }
 jfs_ip = JFS_IP(ip);

 tid = txBegin(dir->i_sb, 0);

 mutex_lock_nested(&JFS_IP(dir)->commit_mutex, COMMIT_MUTEX_PARENT);
 mutex_lock_nested(&JFS_IP(ip)->commit_mutex, COMMIT_MUTEX_CHILD);

 rc = jfs_init_acl(tid, ip, dir);
 if (rc)
  goto out3;

 rc = jfs_init_security(tid, ip, dir);
 if (rc) {
  txAbort(tid, 0);
  goto out3;
 }

 if ((rc = dtSearch(dir, &dname, &ino, &btstack, JFS_CREATE))) {
  txAbort(tid, 0);
  goto out3;
 }

 tblk = tid_to_tblock(tid);
 tblk->xflag |= COMMIT_CREATE;
 tblk->ino = ip->i_ino;
 tblk->u.ixpxd = JFS_IP(ip)->ixpxd;

 ino = ip->i_ino;
 if ((rc = dtInsert(tid, dir, &dname, &ino, &btstack))) {
  txAbort(tid, 0);
  goto out3;
 }

 ip->i_op = &jfs_file_inode_operations;
 jfs_ip->dev = new_encode_dev(rdev);
 init_special_inode(ip, ip->i_mode, rdev);

 mark_inode_dirty(ip);

 dir->i_ctime = dir->i_mtime = CURRENT_TIME;

 mark_inode_dirty(dir);

 iplist[0] = dir;
 iplist[1] = ip;
 rc = txCommit(tid, 2, iplist, 0);

      out3:
 txEnd(tid);
 mutex_unlock(&JFS_IP(ip)->commit_mutex);
 mutex_unlock(&JFS_IP(dir)->commit_mutex);
 if (rc) {
  free_ea_wmap(ip);
  ip->i_nlink = 0;
  unlock_new_inode(ip);
  iput(ip);
 } else {
  d_instantiate(dentry, ip);
  unlock_new_inode(ip);
 }

      out1:
 free_UCSname(&dname);

      out:
 jfs_info("jfs_mknod: returning %d", rc);
 return rc;
}
