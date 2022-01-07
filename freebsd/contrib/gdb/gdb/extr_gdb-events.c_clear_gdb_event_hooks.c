
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int null_event_hooks ;
 int set_gdb_event_hooks (int *) ;

void
clear_gdb_event_hooks (void)
{
  set_gdb_event_hooks (&null_event_hooks);
}
