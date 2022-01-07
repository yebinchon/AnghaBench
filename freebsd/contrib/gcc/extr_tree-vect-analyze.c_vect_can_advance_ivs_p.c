
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;
struct loop {int num; int header; } ;
typedef int loop_vec_info ;
typedef int basic_block ;


 struct loop* LOOP_VINFO_LOOP (int ) ;
 scalar_t__ NULL_TREE ;
 scalar_t__ PHI_CHAIN (scalar_t__) ;
 int PHI_RESULT (scalar_t__) ;
 int REPORT_DETAILS ;
 int SSA_NAME_VAR (int ) ;
 scalar_t__ STMT_VINFO_DEF_TYPE (int ) ;
 int TDF_SLIM ;
 int analyze_scalar_evolution (struct loop*,int ) ;
 scalar_t__ evolution_part_in_loop_num (scalar_t__,int ) ;
 int fprintf (int ,char*) ;
 scalar_t__ instantiate_parameters (struct loop*,int ) ;
 int is_gimple_reg (int ) ;
 scalar_t__ phi_nodes (int ) ;
 int print_generic_expr (int ,scalar_t__,int ) ;
 scalar_t__ tree_is_chrec (scalar_t__) ;
 int vect_dump ;
 scalar_t__ vect_print_dump_info (int ) ;
 scalar_t__ vect_reduction_def ;
 int vinfo_for_stmt (scalar_t__) ;

__attribute__((used)) static bool
vect_can_advance_ivs_p (loop_vec_info loop_vinfo)
{
  struct loop *loop = LOOP_VINFO_LOOP (loop_vinfo);
  basic_block bb = loop->header;
  tree phi;



  if (vect_print_dump_info (REPORT_DETAILS))
    fprintf (vect_dump, "=== vect_can_advance_ivs_p ===");

  for (phi = phi_nodes (bb); phi; phi = PHI_CHAIN (phi))
    {
      tree access_fn = ((void*)0);
      tree evolution_part;

      if (vect_print_dump_info (REPORT_DETAILS))
 {
          fprintf (vect_dump, "Analyze phi: ");
          print_generic_expr (vect_dump, phi, TDF_SLIM);
 }




      if (!is_gimple_reg (SSA_NAME_VAR (PHI_RESULT (phi))))
 {
   if (vect_print_dump_info (REPORT_DETAILS))
     fprintf (vect_dump, "virtual phi. skip.");
   continue;
 }



      if (STMT_VINFO_DEF_TYPE (vinfo_for_stmt (phi)) == vect_reduction_def)
        {
          if (vect_print_dump_info (REPORT_DETAILS))
            fprintf (vect_dump, "reduc phi. skip.");
          continue;
        }



      access_fn = instantiate_parameters
 (loop, analyze_scalar_evolution (loop, PHI_RESULT (phi)));

      if (!access_fn)
 {
   if (vect_print_dump_info (REPORT_DETAILS))
     fprintf (vect_dump, "No Access function.");
   return 0;
 }

      if (vect_print_dump_info (REPORT_DETAILS))
        {
   fprintf (vect_dump, "Access function of PHI: ");
   print_generic_expr (vect_dump, access_fn, TDF_SLIM);
        }

      evolution_part = evolution_part_in_loop_num (access_fn, loop->num);

      if (evolution_part == NULL_TREE)
        {
   if (vect_print_dump_info (REPORT_DETAILS))
     fprintf (vect_dump, "No evolution.");
   return 0;
        }




      if (tree_is_chrec (evolution_part))
 return 0;
    }

  return 1;
}
