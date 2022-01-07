
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int dump_value_range (int *,scalar_t__) ;
 int fprintf (int *,char*) ;
 size_t num_ssa_names ;
 int print_generic_expr (int *,int ,int ) ;
 int ssa_name (size_t) ;
 scalar_t__* vr_value ;

void
dump_all_value_ranges (FILE *file)
{
  size_t i;

  for (i = 0; i < num_ssa_names; i++)
    {
      if (vr_value[i])
 {
   print_generic_expr (file, ssa_name (i), 0);
   fprintf (file, ": ");
   dump_value_range (file, vr_value[i]);
   fprintf (file, "\n");
 }
    }

  fprintf (file, "\n");
}
