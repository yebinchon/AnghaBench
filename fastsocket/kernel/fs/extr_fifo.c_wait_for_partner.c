
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_pipe; } ;


 int current ;
 int pipe_wait (int ) ;
 scalar_t__ signal_pending (int ) ;

__attribute__((used)) static void wait_for_partner(struct inode* inode, unsigned int *cnt)
{
 int cur = *cnt;

 while (cur == *cnt) {
  pipe_wait(inode->i_pipe);
  if (signal_pending(current))
   break;
 }
}
