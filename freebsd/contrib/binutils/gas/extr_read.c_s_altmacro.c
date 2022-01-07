
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int demand_empty_rest_of_line () ;
 int macro_set_alternate (int) ;

void
s_altmacro (int on)
{
  demand_empty_rest_of_line ();
  macro_set_alternate (on);
}
