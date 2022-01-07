
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef enum reg_class { ____Placeholder_reg_class } reg_class ;
struct TYPE_2__ {int* cost; int mem_cost; } ;
typedef int FILE ;


 int FIRST_PSEUDO_REGISTER ;
 scalar_t__ N_REG_CLASSES ;
 size_t PSEUDO_REGNO_MODE (int) ;
 scalar_t__ REG_N_REFS (int) ;
 scalar_t__** contains_reg_of_mode ;
 TYPE_1__* costs ;
 int * forbidden_inc_dec_class ;
 int fprintf (int *,char*,...) ;
 int * in_inc_dec ;
 int invalid_mode_change_p (int,int,size_t) ;
 int max_regno ;
 char** reg_class_names ;

__attribute__((used)) static void
dump_regclass (FILE *dump)
{
  int i;
  for (i = FIRST_PSEUDO_REGISTER; i < max_regno; i++)
    {
      int class;
      if (REG_N_REFS (i))
 {
   fprintf (dump, "  Register %i costs:", i);
   for (class = 0; class < (int) N_REG_CLASSES; class++)
     if (contains_reg_of_mode [(enum reg_class) class][PSEUDO_REGNO_MODE (i)]
  )
     fprintf (dump, " %s:%i", reg_class_names[class],
       costs[i].cost[(enum reg_class) class]);
   fprintf (dump, " MEM:%i\n", costs[i].mem_cost);
 }
    }
}
