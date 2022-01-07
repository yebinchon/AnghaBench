
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tty_struct {int index; struct inode* driver_data; struct tty_driver* driver; } ;
struct tty_driver {scalar_t__ type; scalar_t__ subtype; scalar_t__ minor_start; int major; } ;
struct super_block {struct dentry* s_root; } ;
struct pts_mount_opts {int mode; int gid; scalar_t__ setgid; int uid; scalar_t__ setuid; } ;
struct pts_fs_info {struct pts_mount_opts mount_opts; } ;
struct inode {int i_ino; struct tty_struct* i_private; int i_ctime; int i_atime; int i_mtime; int i_gid; int i_uid; } ;
struct dentry {TYPE_1__* d_inode; } ;
typedef int dev_t ;
struct TYPE_2__ {int i_mutex; } ;


 int BUG_ON (int) ;
 int CURRENT_TIME ;
 struct pts_fs_info* DEVPTS_SB (struct super_block*) ;
 int ENOMEM ;
 int IS_ERR (struct dentry*) ;
 int MKDEV (int ,scalar_t__) ;
 scalar_t__ PTY_TYPE_SLAVE ;
 int S_IFCHR ;
 scalar_t__ TTY_DRIVER_TYPE_PTY ;
 int current_fsgid () ;
 int current_fsuid () ;
 int d_add (struct dentry*,struct inode*) ;
 struct dentry* d_alloc_name (struct dentry*,char*) ;
 int fsnotify_create (TYPE_1__*,struct dentry*) ;
 int init_special_inode (struct inode*,int,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct inode* new_inode (struct super_block*) ;
 struct super_block* pts_sb_from_inode (struct inode*) ;
 int sprintf (char*,char*,int) ;

int devpts_pty_new(struct inode *ptmx_inode, struct tty_struct *tty)
{

 int number = tty->index;
 struct tty_driver *driver = tty->driver;
 dev_t device = MKDEV(driver->major, driver->minor_start+number);
 struct dentry *dentry;
 struct super_block *sb = pts_sb_from_inode(ptmx_inode);
 struct inode *inode = new_inode(sb);
 struct dentry *root = sb->s_root;
 struct pts_fs_info *fsi = DEVPTS_SB(sb);
 struct pts_mount_opts *opts = &fsi->mount_opts;
 char s[12];


 BUG_ON(driver->type != TTY_DRIVER_TYPE_PTY);
 BUG_ON(driver->subtype != PTY_TYPE_SLAVE);

 if (!inode)
  return -ENOMEM;

 inode->i_ino = number + 3;
 inode->i_uid = opts->setuid ? opts->uid : current_fsuid();
 inode->i_gid = opts->setgid ? opts->gid : current_fsgid();
 inode->i_mtime = inode->i_atime = inode->i_ctime = CURRENT_TIME;
 init_special_inode(inode, S_IFCHR|opts->mode, device);
 inode->i_private = tty;
 tty->driver_data = inode;

 sprintf(s, "%d", number);

 mutex_lock(&root->d_inode->i_mutex);

 dentry = d_alloc_name(root, s);
 if (!IS_ERR(dentry)) {
  d_add(dentry, inode);
  fsnotify_create(root->d_inode, dentry);
 }

 mutex_unlock(&root->d_inode->i_mutex);

 return 0;
}
