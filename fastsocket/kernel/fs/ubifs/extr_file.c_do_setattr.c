
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ubifs_inode {int dirty; int ui_mutex; int ui_size; int data_len; } ;
struct ubifs_info {int dummy; } ;
struct ubifs_budget_req {int dirtied_ino; int dirtied_ino_d; } ;
struct inode {TYPE_2__* i_sb; int i_size; int i_ctime; int i_mtime; } ;
struct iattr {int ia_valid; int ia_size; } ;
typedef int loff_t ;
struct TYPE_4__ {TYPE_1__* s_op; } ;
struct TYPE_3__ {int (* write_inode ) (struct inode*,int *) ;} ;


 int ALIGN (int ,int) ;
 int ATTR_SIZE ;
 scalar_t__ IS_SYNC (struct inode*) ;
 int I_DIRTY_DATASYNC ;
 int I_DIRTY_SYNC ;
 int __mark_inode_dirty (struct inode*,int) ;
 int dbg_gen (char*,int ,int ) ;
 int do_attr_changes (struct inode*,struct iattr const*) ;
 int mark_inode_dirty_sync (struct inode*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (struct inode*,int *) ;
 int ubifs_budget_space (struct ubifs_info*,struct ubifs_budget_req*) ;
 int ubifs_current_time (struct inode*) ;
 struct ubifs_inode* ubifs_inode (struct inode*) ;
 int ubifs_release_budget (struct ubifs_info*,struct ubifs_budget_req*) ;
 int vmtruncate (struct inode*,int ) ;

__attribute__((used)) static int do_setattr(struct ubifs_info *c, struct inode *inode,
        const struct iattr *attr)
{
 int err, release;
 loff_t new_size = attr->ia_size;
 struct ubifs_inode *ui = ubifs_inode(inode);
 struct ubifs_budget_req req = { .dirtied_ino = 1,
    .dirtied_ino_d = ALIGN(ui->data_len, 8) };

 err = ubifs_budget_space(c, &req);
 if (err)
  return err;

 if (attr->ia_valid & ATTR_SIZE) {
  dbg_gen("size %lld -> %lld", inode->i_size, new_size);
  err = vmtruncate(inode, new_size);
  if (err)
   goto out;
 }

 mutex_lock(&ui->ui_mutex);
 if (attr->ia_valid & ATTR_SIZE) {

  inode->i_mtime = inode->i_ctime = ubifs_current_time(inode);

  ui->ui_size = inode->i_size;
 }

 do_attr_changes(inode, attr);

 release = ui->dirty;
 if (attr->ia_valid & ATTR_SIZE)




   __mark_inode_dirty(inode, I_DIRTY_SYNC | I_DIRTY_DATASYNC);
 else
  mark_inode_dirty_sync(inode);
 mutex_unlock(&ui->ui_mutex);

 if (release)
  ubifs_release_budget(c, &req);
 if (IS_SYNC(inode))
  err = inode->i_sb->s_op->write_inode(inode, ((void*)0));
 return err;

out:
 ubifs_release_budget(c, &req);
 return err;
}
