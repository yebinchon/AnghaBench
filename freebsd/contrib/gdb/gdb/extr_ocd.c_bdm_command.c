
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int error (char*) ;

__attribute__((used)) static void
bdm_command (char *args, int from_tty)
{
  error ("bdm command must be followed by `reset'");
}
