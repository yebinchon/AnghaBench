
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int child_cmd ;
 int device_mode (int ,int ) ;
 scalar_t__ errno ;
 int error (char*,int ) ;
 int inf_mode_valid ;
 int inf_terminal_mode ;
 int redir_to_child (int *) ;
 int redir_to_debugger (int *) ;
 int safe_strerror (scalar_t__) ;
 int terminal_is_ours ;

__attribute__((used)) static void
go32_terminal_ours (void)
{


  if (!terminal_is_ours)
  {
    inf_terminal_mode = device_mode (0, 0);
    if (inf_terminal_mode != -1)
      inf_mode_valid = 1;
    else


      inf_mode_valid = 0;
    terminal_is_ours = 1;


    errno = 0;
    if (redir_to_debugger (&child_cmd) == -1)
    {
      redir_to_child (&child_cmd);
      error ("Cannot redirect standard handles for debugger: %s.",
      safe_strerror (errno));
    }
  }
}
