
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pipe_inode_info {int dummy; } ;
struct inode {struct pipe_inode_info* i_pipe; int i_mode; } ;


 scalar_t__ S_ISFIFO (int ) ;

__attribute__((used)) static inline struct pipe_inode_info *pipe_info(struct inode *inode)
{
 if (S_ISFIFO(inode->i_mode))
  return inode->i_pipe;

 return ((void*)0);
}
