
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ubifs_inode {scalar_t__ dirty; scalar_t__ ui_size; scalar_t__ xattr; } ;
struct ubifs_info {scalar_t__ nospace_rp; scalar_t__ nospace; } ;
struct inode {scalar_t__ i_nlink; int i_ino; scalar_t__ i_size; int i_data; int i_count; scalar_t__ i_mode; TYPE_1__* i_sb; } ;
struct TYPE_2__ {struct ubifs_info* s_fs_info; } ;


 int atomic_read (int *) ;
 int clear_inode (struct inode*) ;
 int dbg_gen (char*,int ,int) ;
 scalar_t__ is_bad_inode (struct inode*) ;
 int smp_wmb () ;
 int truncate_inode_pages (int *,int ) ;
 int ubifs_assert (int) ;
 int ubifs_err (char*,int ,int) ;
 struct ubifs_inode* ubifs_inode (struct inode*) ;
 int ubifs_jnl_delete_inode (struct ubifs_info*,struct inode*) ;
 int ubifs_release_dirty_inode_budget (struct ubifs_info*,struct ubifs_inode*) ;

__attribute__((used)) static void ubifs_delete_inode(struct inode *inode)
{
 int err;
 struct ubifs_info *c = inode->i_sb->s_fs_info;
 struct ubifs_inode *ui = ubifs_inode(inode);

 if (ui->xattr)





  goto out;

 dbg_gen("inode %lu, mode %#x", inode->i_ino, (int)inode->i_mode);
 ubifs_assert(!atomic_read(&inode->i_count));
 ubifs_assert(inode->i_nlink == 0);

 truncate_inode_pages(&inode->i_data, 0);
 if (is_bad_inode(inode))
  goto out;

 ui->ui_size = inode->i_size = 0;
 err = ubifs_jnl_delete_inode(c, inode);
 if (err)




  ubifs_err("can't delete inode %lu, error %d",
     inode->i_ino, err);

out:
 if (ui->dirty)
  ubifs_release_dirty_inode_budget(c, ui);
 else {

  c->nospace = c->nospace_rp = 0;
  smp_wmb();
 }
 clear_inode(inode);
}
