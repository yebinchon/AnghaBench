
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * reserv_sets_t ;


 int els_in_cycle_reserv ;
 int els_in_reservs ;
 int gcc_assert (int) ;

__attribute__((used)) static void
reserv_sets_shift (reserv_sets_t result, reserv_sets_t operand)
{
  int i;

  gcc_assert (result && operand && result != operand);
  for (i = els_in_cycle_reserv; i < els_in_reservs; i++)
    result [i - els_in_cycle_reserv] = operand [i];
}
