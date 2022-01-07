
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_ctime; int i_mtime; int i_atime; int i_mode; } ;
typedef int mode_t ;


 int CURRENT_TIME ;

__attribute__((used)) static inline void set_default_inode_attr(struct inode * inode, mode_t mode)
{
 inode->i_mode = mode;
 inode->i_atime = inode->i_mtime = inode->i_ctime = CURRENT_TIME;
}
