
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ubifs_inode {scalar_t__ creat_sqnum; scalar_t__ synced_i_size; int compr_type; int flags; int ui_size; } ;
struct ubifs_info {scalar_t__ highest_inum; int cnt_lock; scalar_t__ max_sqnum; int default_compr; int bdi; int vfs_sb; } ;
struct inode {int i_mode; scalar_t__ i_ino; int * i_op; int i_size; int * i_fop; TYPE_1__* i_mapping; int i_ctime; int i_atime; int i_mtime; int i_gid; int i_uid; int i_flags; } ;
struct TYPE_2__ {int * a_ops; int * backing_dev_info; scalar_t__ nrpages; } ;


 int BUG () ;
 int EINVAL ;
 int ENOMEM ;
 struct inode* ERR_PTR (int ) ;
 scalar_t__ INUM_WARN_WATERMARK ;
 scalar_t__ INUM_WATERMARK ;





 int S_IFMT ;


 scalar_t__ S_ISDIR (int) ;
 int S_ISGID ;
 scalar_t__ S_ISREG (int) ;
 int S_NOCMTIME ;
 int UBIFS_COMPR_NONE ;
 int UBIFS_INO_NODE_SZ ;
 int current_fsgid () ;
 int current_fsuid () ;
 int inherit_flags (struct inode const*,int) ;
 int iput (struct inode*) ;
 int make_bad_inode (struct inode*) ;
 struct inode* new_inode (int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int ubifs_current_time (struct inode*) ;
 int ubifs_dir_inode_operations ;
 int ubifs_dir_operations ;
 int ubifs_err (char*) ;
 int ubifs_file_address_operations ;
 int ubifs_file_inode_operations ;
 int ubifs_file_operations ;
 struct ubifs_inode* ubifs_inode (struct inode*) ;
 int ubifs_set_inode_flags (struct inode*) ;
 int ubifs_symlink_inode_operations ;
 int ubifs_warn (char*,unsigned long,scalar_t__) ;

struct inode *ubifs_new_inode(struct ubifs_info *c, const struct inode *dir,
         int mode)
{
 struct inode *inode;
 struct ubifs_inode *ui;

 inode = new_inode(c->vfs_sb);
 ui = ubifs_inode(inode);
 if (!inode)
  return ERR_PTR(-ENOMEM);







 inode->i_flags |= (S_NOCMTIME);

 inode->i_uid = current_fsuid();
 if (dir->i_mode & S_ISGID) {
  inode->i_gid = dir->i_gid;
  if (S_ISDIR(mode))
   mode |= S_ISGID;
 } else
  inode->i_gid = current_fsgid();
 inode->i_mode = mode;
 inode->i_mtime = inode->i_atime = inode->i_ctime =
    ubifs_current_time(inode);
 inode->i_mapping->nrpages = 0;

 inode->i_mapping->backing_dev_info = &c->bdi;

 switch (mode & S_IFMT) {
 case 129:
  inode->i_mapping->a_ops = &ubifs_file_address_operations;
  inode->i_op = &ubifs_file_inode_operations;
  inode->i_fop = &ubifs_file_operations;
  break;
 case 132:
  inode->i_op = &ubifs_dir_inode_operations;
  inode->i_fop = &ubifs_dir_operations;
  inode->i_size = ui->ui_size = UBIFS_INO_NODE_SZ;
  break;
 case 130:
  inode->i_op = &ubifs_symlink_inode_operations;
  break;
 case 128:
 case 131:
 case 134:
 case 133:
  inode->i_op = &ubifs_file_inode_operations;
  break;
 default:
  BUG();
 }

 ui->flags = inherit_flags(dir, mode);
 ubifs_set_inode_flags(inode);
 if (S_ISREG(mode))
  ui->compr_type = c->default_compr;
 else
  ui->compr_type = UBIFS_COMPR_NONE;
 ui->synced_i_size = 0;

 spin_lock(&c->cnt_lock);

 if (c->highest_inum >= INUM_WARN_WATERMARK) {
  if (c->highest_inum >= INUM_WATERMARK) {
   spin_unlock(&c->cnt_lock);
   ubifs_err("out of inode numbers");
   make_bad_inode(inode);
   iput(inode);
   return ERR_PTR(-EINVAL);
  }
  ubifs_warn("running out of inode numbers (current %lu, max %d)",
      (unsigned long)c->highest_inum, INUM_WATERMARK);
 }

 inode->i_ino = ++c->highest_inum;







 ui->creat_sqnum = ++c->max_sqnum;
 spin_unlock(&c->cnt_lock);
 return inode;
}
