
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dataflow {int flags; } ;
typedef int FILE ;


 int DF_RI_LIFE ;
 int dump_flow_info (int *,int) ;
 int fprintf (int *,char*) ;
 int get_insns () ;
 int print_rtl_with_bb (int *,int ) ;

__attribute__((used)) static void
df_ri_dump (struct dataflow *dflow, FILE *file)
{
  print_rtl_with_bb (file, get_insns ());

  if (dflow->flags & DF_RI_LIFE)
    {
      fprintf (file, "Register info:\n");
      dump_flow_info (file, -1);
    }
}
