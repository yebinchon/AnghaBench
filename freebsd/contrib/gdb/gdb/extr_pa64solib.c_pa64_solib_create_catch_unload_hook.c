
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int create_solib_unload_event_breakpoint (char*,int,char*,char*) ;

void
pa64_solib_create_catch_unload_hook (int pid, int tempflag, char *filename,
         char *cond_string)
{
  create_solib_unload_event_breakpoint ("", tempflag, filename, cond_string);
}
