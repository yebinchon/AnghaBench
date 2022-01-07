
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cmd_list_element {int dummy; } ;


 int reinit_frame_cache () ;

__attribute__((used)) static void
reinit_frame_cache_sfunc (char *args, int from_tty,
     struct cmd_list_element *c)
{
  reinit_frame_cache ();
}
