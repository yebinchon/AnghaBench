
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int gcc_assert (int) ;
 int processing_explicit_instantiation ;

void
begin_explicit_instantiation (void)
{
  gcc_assert (!processing_explicit_instantiation);
  processing_explicit_instantiation = 1;
}
