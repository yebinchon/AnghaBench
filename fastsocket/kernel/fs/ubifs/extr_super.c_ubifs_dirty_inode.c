
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubifs_inode {int dirty; int ui_mutex; } ;
struct inode {int i_ino; } ;


 int dbg_gen (char*,int ) ;
 int mutex_is_locked (int *) ;
 int ubifs_assert (int ) ;
 struct ubifs_inode* ubifs_inode (struct inode*) ;

__attribute__((used)) static void ubifs_dirty_inode(struct inode *inode)
{
 struct ubifs_inode *ui = ubifs_inode(inode);

 ubifs_assert(mutex_is_locked(&ui->ui_mutex));
 if (!ui->dirty) {
  ui->dirty = 1;
  dbg_gen("inode %lu", inode->i_ino);
 }
}
