
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef union ubifs_key {int dummy; } ubifs_key ;
union ubifs_dev_desc {int huge; int new; } ;
struct ubifs_inode {size_t data_len; int flags; int xattr; void* data; void* ui_size; void* synced_i_size; void* xattr_names; void* xattr_size; void* xattr_cnt; void* creat_sqnum; int compr_type; } ;
struct ubifs_ino_node {scalar_t__ data; int xattr_names; int xattr_size; int xattr_cnt; int creat_sqnum; int compr_type; int flags; int data_len; int size; int mode; int ctime_nsec; int ctime_sec; int mtime_nsec; int mtime_sec; int atime_nsec; int atime_sec; int gid; int uid; int nlink; } ;
struct ubifs_info {int bdi; } ;
struct super_block {struct ubifs_info* s_fs_info; } ;
struct TYPE_7__ {void* tv_nsec; void* tv_sec; } ;
struct TYPE_6__ {void* tv_nsec; void* tv_sec; } ;
struct TYPE_5__ {void* tv_nsec; void* tv_sec; } ;
struct inode {int i_state; int i_flags; int i_mode; int i_ino; int * i_op; int * i_fop; TYPE_4__* i_mapping; void* i_size; TYPE_3__ i_ctime; TYPE_2__ i_mtime; TYPE_1__ i_atime; void* i_gid; void* i_uid; void* i_nlink; } ;
typedef void* int64_t ;
typedef int dev_t ;
struct TYPE_8__ {int * a_ops; int * backing_dev_info; } ;


 int EINVAL ;
 int ENOMEM ;
 struct inode* ERR_PTR (int) ;
 int GFP_NOFS ;
 int I_NEW ;





 int S_IFMT ;


 int S_NOATIME ;
 int S_NOCMTIME ;
 size_t UBIFS_MAX_INO_DATA ;
 int UBIFS_MAX_INO_NODE_SZ ;
 int UBIFS_XATTR_FL ;
 int dbg_dump_inode (struct ubifs_info*,struct inode*) ;
 int dbg_dump_node (struct ubifs_info*,struct ubifs_ino_node*) ;
 int dbg_gen (char*,unsigned long) ;
 int huge_decode_dev (void*) ;
 int iget_failed (struct inode*) ;
 struct inode* iget_locked (struct super_block*,unsigned long) ;
 int init_special_inode (struct inode*,int,int ) ;
 int ino_key_init (struct ubifs_info*,union ubifs_key*,int ) ;
 int kfree (struct ubifs_ino_node*) ;
 void* kmalloc (int,int ) ;
 int le16_to_cpu (int ) ;
 void* le32_to_cpu (int ) ;
 void* le64_to_cpu (int ) ;
 int memcpy (void*,scalar_t__,size_t) ;
 int new_decode_dev (void*) ;
 int ubifs_dir_inode_operations ;
 int ubifs_dir_operations ;
 int ubifs_err (char*,int ,int) ;
 int ubifs_file_address_operations ;
 int ubifs_file_inode_operations ;
 int ubifs_file_operations ;
 struct ubifs_inode* ubifs_inode (struct inode*) ;
 int ubifs_set_inode_flags (struct inode*) ;
 int ubifs_symlink_inode_operations ;
 int ubifs_tnc_lookup (struct ubifs_info*,union ubifs_key*,struct ubifs_ino_node*) ;
 int unlock_new_inode (struct inode*) ;
 int validate_inode (struct ubifs_info*,struct inode*) ;

struct inode *ubifs_iget(struct super_block *sb, unsigned long inum)
{
 int err;
 union ubifs_key key;
 struct ubifs_ino_node *ino;
 struct ubifs_info *c = sb->s_fs_info;
 struct inode *inode;
 struct ubifs_inode *ui;

 dbg_gen("inode %lu", inum);

 inode = iget_locked(sb, inum);
 if (!inode)
  return ERR_PTR(-ENOMEM);
 if (!(inode->i_state & I_NEW))
  return inode;
 ui = ubifs_inode(inode);

 ino = kmalloc(UBIFS_MAX_INO_NODE_SZ, GFP_NOFS);
 if (!ino) {
  err = -ENOMEM;
  goto out;
 }

 ino_key_init(c, &key, inode->i_ino);

 err = ubifs_tnc_lookup(c, &key, ino);
 if (err)
  goto out_ino;

 inode->i_flags |= (S_NOCMTIME | S_NOATIME);
 inode->i_nlink = le32_to_cpu(ino->nlink);
 inode->i_uid = le32_to_cpu(ino->uid);
 inode->i_gid = le32_to_cpu(ino->gid);
 inode->i_atime.tv_sec = (int64_t)le64_to_cpu(ino->atime_sec);
 inode->i_atime.tv_nsec = le32_to_cpu(ino->atime_nsec);
 inode->i_mtime.tv_sec = (int64_t)le64_to_cpu(ino->mtime_sec);
 inode->i_mtime.tv_nsec = le32_to_cpu(ino->mtime_nsec);
 inode->i_ctime.tv_sec = (int64_t)le64_to_cpu(ino->ctime_sec);
 inode->i_ctime.tv_nsec = le32_to_cpu(ino->ctime_nsec);
 inode->i_mode = le32_to_cpu(ino->mode);
 inode->i_size = le64_to_cpu(ino->size);

 ui->data_len = le32_to_cpu(ino->data_len);
 ui->flags = le32_to_cpu(ino->flags);
 ui->compr_type = le16_to_cpu(ino->compr_type);
 ui->creat_sqnum = le64_to_cpu(ino->creat_sqnum);
 ui->xattr_cnt = le32_to_cpu(ino->xattr_cnt);
 ui->xattr_size = le32_to_cpu(ino->xattr_size);
 ui->xattr_names = le32_to_cpu(ino->xattr_names);
 ui->synced_i_size = ui->ui_size = inode->i_size;

 ui->xattr = (ui->flags & UBIFS_XATTR_FL) ? 1 : 0;

 err = validate_inode(c, inode);
 if (err)
  goto out_invalid;


 inode->i_mapping->backing_dev_info = &c->bdi;

 switch (inode->i_mode & S_IFMT) {
 case 129:
  inode->i_mapping->a_ops = &ubifs_file_address_operations;
  inode->i_op = &ubifs_file_inode_operations;
  inode->i_fop = &ubifs_file_operations;
  if (ui->xattr) {
   ui->data = kmalloc(ui->data_len + 1, GFP_NOFS);
   if (!ui->data) {
    err = -ENOMEM;
    goto out_ino;
   }
   memcpy(ui->data, ino->data, ui->data_len);
   ((char *)ui->data)[ui->data_len] = '\0';
  } else if (ui->data_len != 0) {
   err = 10;
   goto out_invalid;
  }
  break;
 case 132:
  inode->i_op = &ubifs_dir_inode_operations;
  inode->i_fop = &ubifs_dir_operations;
  if (ui->data_len != 0) {
   err = 11;
   goto out_invalid;
  }
  break;
 case 130:
  inode->i_op = &ubifs_symlink_inode_operations;
  if (ui->data_len <= 0 || ui->data_len > UBIFS_MAX_INO_DATA) {
   err = 12;
   goto out_invalid;
  }
  ui->data = kmalloc(ui->data_len + 1, GFP_NOFS);
  if (!ui->data) {
   err = -ENOMEM;
   goto out_ino;
  }
  memcpy(ui->data, ino->data, ui->data_len);
  ((char *)ui->data)[ui->data_len] = '\0';
  break;
 case 134:
 case 133:
 {
  dev_t rdev;
  union ubifs_dev_desc *dev;

  ui->data = kmalloc(sizeof(union ubifs_dev_desc), GFP_NOFS);
  if (!ui->data) {
   err = -ENOMEM;
   goto out_ino;
  }

  dev = (union ubifs_dev_desc *)ino->data;
  if (ui->data_len == sizeof(dev->new))
   rdev = new_decode_dev(le32_to_cpu(dev->new));
  else if (ui->data_len == sizeof(dev->huge))
   rdev = huge_decode_dev(le64_to_cpu(dev->huge));
  else {
   err = 13;
   goto out_invalid;
  }
  memcpy(ui->data, ino->data, ui->data_len);
  inode->i_op = &ubifs_file_inode_operations;
  init_special_inode(inode, inode->i_mode, rdev);
  break;
 }
 case 128:
 case 131:
  inode->i_op = &ubifs_file_inode_operations;
  init_special_inode(inode, inode->i_mode, 0);
  if (ui->data_len != 0) {
   err = 14;
   goto out_invalid;
  }
  break;
 default:
  err = 15;
  goto out_invalid;
 }

 kfree(ino);
 ubifs_set_inode_flags(inode);
 unlock_new_inode(inode);
 return inode;

out_invalid:
 ubifs_err("inode %lu validation failed, error %d", inode->i_ino, err);
 dbg_dump_node(c, ino);
 dbg_dump_inode(c, inode);
 err = -EINVAL;
out_ino:
 kfree(ino);
out:
 ubifs_err("failed to read inode %lu, error %d", inode->i_ino, err);
 iget_failed(inode);
 return ERR_PTR(err);
}
