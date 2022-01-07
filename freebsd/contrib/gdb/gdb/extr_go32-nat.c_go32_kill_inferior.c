
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int child_cmd ;
 int go32_ops ;
 int redir_cmdline_delete (int *) ;
 scalar_t__ resume_is_step ;
 int resume_signal ;
 int unpush_target (int *) ;

__attribute__((used)) static void
go32_kill_inferior (void)
{
  redir_cmdline_delete (&child_cmd);
  resume_signal = -1;
  resume_is_step = 0;
  unpush_target (&go32_ops);
}
