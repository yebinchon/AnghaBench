
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct breakpoint {int dummy; } ;


 int delete_breakpoint (struct breakpoint*) ;

__attribute__((used)) static void
delete_breakpoint_current_contents (void *arg)
{
  struct breakpoint **breakpointp = (struct breakpoint **) arg;
  if (*breakpointp != ((void*)0))
    {
      delete_breakpoint (*breakpointp);
      *breakpointp = ((void*)0);
    }
}
