
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int bp_catch_unload ;
 int solib_load_unload_1 (char*,int,char*,char*,int ) ;

void
create_solib_unload_event_breakpoint (char *hookname, int tempflag,
          char *dll_pathname, char *cond_string)
{
  solib_load_unload_1 (hookname,tempflag, dll_pathname,
         cond_string, bp_catch_unload);
}
