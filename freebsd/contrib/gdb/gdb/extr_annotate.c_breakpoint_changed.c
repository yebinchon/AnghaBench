
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct breakpoint {int dummy; } ;


 int breakpoints_changed () ;

__attribute__((used)) static void
breakpoint_changed (struct breakpoint *b)
{
  breakpoints_changed ();
}
