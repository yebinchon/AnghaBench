
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;


 int fsnotify_clear_marks_by_inode (struct inode*) ;

void __fsnotify_inode_delete(struct inode *inode)
{
 fsnotify_clear_marks_by_inode(inode);
}
