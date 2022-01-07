
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int set_el_t ;
typedef int* reserv_sets_t ;


 int els_in_reservs ;
 int gcc_assert (int ) ;

__attribute__((used)) static void
reserv_sets_or (reserv_sets_t result, reserv_sets_t operand_1,
  reserv_sets_t operand_2)
{
  set_el_t *el_ptr_1;
  set_el_t *el_ptr_2;
  set_el_t *result_set_el_ptr;

  gcc_assert (result && operand_1 && operand_2);
  for (el_ptr_1 = operand_1, el_ptr_2 = operand_2, result_set_el_ptr = result;
       el_ptr_1 < operand_1 + els_in_reservs;
       el_ptr_1++, el_ptr_2++, result_set_el_ptr++)
    *result_set_el_ptr = *el_ptr_1 | *el_ptr_2;
}
