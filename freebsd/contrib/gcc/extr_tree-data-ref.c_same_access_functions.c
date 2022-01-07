
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct data_dependence_relation {int dummy; } ;


 int DDR_A (struct data_dependence_relation*) ;
 int DDR_B (struct data_dependence_relation*) ;
 unsigned int DDR_NUM_SUBSCRIPTS (struct data_dependence_relation*) ;
 int DR_ACCESS_FN (int ,unsigned int) ;
 int eq_evolutions_p (int ,int ) ;

__attribute__((used)) static bool
same_access_functions (struct data_dependence_relation *ddr)
{
  unsigned i;

  for (i = 0; i < DDR_NUM_SUBSCRIPTS (ddr); i++)
    if (!eq_evolutions_p (DR_ACCESS_FN (DDR_A (ddr), i),
     DR_ACCESS_FN (DDR_B (ddr), i)))
      return 0;

  return 1;
}
