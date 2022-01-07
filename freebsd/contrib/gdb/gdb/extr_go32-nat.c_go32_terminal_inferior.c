
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int child_cmd ;
 int device_mode (int ,int ) ;
 scalar_t__ errno ;
 int error (char*,int ) ;
 scalar_t__ inf_mode_valid ;
 int inf_terminal_mode ;
 int redir_to_child (int *) ;
 int redir_to_debugger (int *) ;
 int safe_strerror (scalar_t__) ;
 scalar_t__ terminal_is_ours ;

__attribute__((used)) static void
go32_terminal_inferior (void)
{

  errno = 0;
  if (redir_to_child (&child_cmd) == -1)
  {
    redir_to_debugger (&child_cmd);
    error ("Cannot redirect standard handles for program: %s.",
    safe_strerror (errno));
  }


  if (terminal_is_ours)
  {
    if (inf_mode_valid)
      device_mode (0, inf_terminal_mode);
    terminal_is_ours = 0;
  }
}
