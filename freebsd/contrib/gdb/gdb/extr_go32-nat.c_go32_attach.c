
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int error (char*) ;

__attribute__((used)) static void
go32_attach (char *args, int from_tty)
{
  error ("You cannot attach to a running program on this platform.\nUse the `run' command to run DJGPP programs.");


}
