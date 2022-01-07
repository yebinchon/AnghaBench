
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int delete_breakpoint (void*) ;

__attribute__((used)) static void
do_delete_breakpoint_cleanup (void *b)
{
  delete_breakpoint (b);
}
