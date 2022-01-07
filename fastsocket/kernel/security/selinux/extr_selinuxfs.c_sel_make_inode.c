
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct inode {int i_mode; int i_ctime; int i_mtime; int i_atime; } ;


 int CURRENT_TIME ;
 struct inode* new_inode (struct super_block*) ;

__attribute__((used)) static struct inode *sel_make_inode(struct super_block *sb, int mode)
{
 struct inode *ret = new_inode(sb);

 if (ret) {
  ret->i_mode = mode;
  ret->i_atime = ret->i_mtime = ret->i_ctime = CURRENT_TIME;
 }
 return ret;
}
