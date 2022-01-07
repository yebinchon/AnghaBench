
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int debug_reload_to_stream (int ) ;
 int stderr ;

void
debug_reload (void)
{
  debug_reload_to_stream (stderr);
}
