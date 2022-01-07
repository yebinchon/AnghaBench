
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CDI_DOMINATORS ;
 int antloc ;
 int calculate_dominance_info (int ) ;
 int comp ;
 int compute_code_hoist_vbeinout () ;
 int compute_local_properties (int ,int ,int ,int *) ;
 int compute_transpout () ;
 scalar_t__ dump_file ;
 int expr_hash_table ;
 int fprintf (scalar_t__,char*) ;
 int transp ;

__attribute__((used)) static void
compute_code_hoist_data (void)
{
  compute_local_properties (transp, comp, antloc, &expr_hash_table);
  compute_transpout ();
  compute_code_hoist_vbeinout ();
  calculate_dominance_info (CDI_DOMINATORS);
  if (dump_file)
    fprintf (dump_file, "\n");
}
