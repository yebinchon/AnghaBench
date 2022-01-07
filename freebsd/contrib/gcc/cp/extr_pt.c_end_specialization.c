
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int finish_scope () ;
 int reset_specialization () ;

void
end_specialization (void)
{
  finish_scope ();
  reset_specialization ();
}
