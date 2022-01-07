
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct data_dependence_relation {int dummy; } ;


 scalar_t__ DDR_ARE_DEPENDENT (struct data_dependence_relation*) ;
 scalar_t__ DDR_SUBSCRIPTS (struct data_dependence_relation*) ;
 scalar_t__ NULL_TREE ;
 int VEC_free (int ,int ,scalar_t__) ;
 int free (struct data_dependence_relation*) ;
 int heap ;
 int subscript_p ;

void
free_dependence_relation (struct data_dependence_relation *ddr)
{
  if (ddr == ((void*)0))
    return;

  if (DDR_ARE_DEPENDENT (ddr) == NULL_TREE && DDR_SUBSCRIPTS (ddr))
    VEC_free (subscript_p, heap, DDR_SUBSCRIPTS (ddr));

  free (ddr);
}
