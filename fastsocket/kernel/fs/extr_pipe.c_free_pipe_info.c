
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int * i_pipe; } ;


 int __free_pipe_info (int *) ;

void free_pipe_info(struct inode *inode)
{
 __free_pipe_info(inode->i_pipe);
 inode->i_pipe = ((void*)0);
}
