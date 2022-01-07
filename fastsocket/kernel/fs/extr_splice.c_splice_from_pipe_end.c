
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct splice_desc {scalar_t__ need_wakeup; } ;
struct pipe_inode_info {int dummy; } ;


 int wakeup_pipe_writers (struct pipe_inode_info*) ;

void splice_from_pipe_end(struct pipe_inode_info *pipe, struct splice_desc *sd)
{
 if (sd->need_wakeup)
  wakeup_pipe_writers(pipe);
}
