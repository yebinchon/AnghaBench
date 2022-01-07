
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct super_block {int dummy; } ;
struct qstr {int len; char* name; } ;
struct object_info {int parent_id; int file_id; scalar_t__ name_len; } ;
struct inode {int i_ino; int i_size; struct super_block* i_sb; } ;
struct adfs_dir_ops {int (* read ) (struct super_block*,int ,int ,struct adfs_dir*) ;int (* setpos ) (struct adfs_dir*,int ) ;scalar_t__ (* getnext ) (struct adfs_dir*,struct object_info*) ;int (* free ) (struct adfs_dir*) ;} ;
struct adfs_dir {scalar_t__ parent_id; } ;
struct TYPE_4__ {scalar_t__ parent_id; } ;
struct TYPE_3__ {struct adfs_dir_ops* s_dir; } ;


 TYPE_2__* ADFS_I (struct inode*) ;
 TYPE_1__* ADFS_SB (struct super_block*) ;
 int EIO ;
 int ENOENT ;
 int adfs_dir_lock ;
 int adfs_error (struct super_block*,char*,scalar_t__,scalar_t__) ;
 scalar_t__ adfs_match (struct qstr*,struct object_info*) ;
 int read_lock (int *) ;
 int read_unlock (int *) ;
 int stub1 (struct super_block*,int ,int ,struct adfs_dir*) ;
 int stub2 (struct adfs_dir*,int ) ;
 scalar_t__ stub3 (struct adfs_dir*,struct object_info*) ;
 int stub4 (struct adfs_dir*) ;

__attribute__((used)) static int
adfs_dir_lookup_byname(struct inode *inode, struct qstr *name, struct object_info *obj)
{
 struct super_block *sb = inode->i_sb;
 struct adfs_dir_ops *ops = ADFS_SB(sb)->s_dir;
 struct adfs_dir dir;
 int ret;

 ret = ops->read(sb, inode->i_ino, inode->i_size, &dir);
 if (ret)
  goto out;

 if (ADFS_I(inode)->parent_id != dir.parent_id) {
  adfs_error(sb, "parent directory changed under me! (%lx but got %lx)\n",
      ADFS_I(inode)->parent_id, dir.parent_id);
  ret = -EIO;
  goto free_out;
 }

 obj->parent_id = inode->i_ino;




 if (name->len == 2 && name->name[0] == '.' && name->name[1] == '.') {





  obj->name_len = 0;
  obj->file_id = obj->parent_id;
  goto free_out;
 }

 read_lock(&adfs_dir_lock);

 ret = ops->setpos(&dir, 0);
 if (ret)
  goto unlock_out;

 ret = -ENOENT;
 while (ops->getnext(&dir, obj) == 0) {
  if (adfs_match(name, obj)) {
   ret = 0;
   break;
  }
 }

unlock_out:
 read_unlock(&adfs_dir_lock);

free_out:
 ops->free(&dir);
out:
 return ret;
}
