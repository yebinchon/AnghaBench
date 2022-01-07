
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int free_command_lines (void*) ;

__attribute__((used)) static void
do_free_command_lines_cleanup (void *arg)
{
  free_command_lines (arg);
}
