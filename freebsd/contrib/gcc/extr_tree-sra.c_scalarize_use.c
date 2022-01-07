
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * tree ;
struct sra_elt {int * replacement; } ;
typedef int block_stmt_iterator ;


 int * bsi_stmt (int ) ;
 int generate_copy_inout (struct sra_elt*,int,int ,int **) ;
 int generate_element_ref (struct sra_elt*) ;
 int mark_all_v_defs (int *) ;
 int mark_no_warning (struct sra_elt*) ;
 int sra_insert_after (int *,int *) ;
 int sra_insert_before (int *,int *) ;
 int update_stmt (int *) ;

__attribute__((used)) static void
scalarize_use (struct sra_elt *elt, tree *expr_p, block_stmt_iterator *bsi,
        bool is_output, bool use_all)
{
  tree list = ((void*)0), stmt = bsi_stmt (*bsi);

  if (elt->replacement)
    {


      if (is_output)
 mark_all_v_defs (stmt);
      *expr_p = elt->replacement;
      update_stmt (stmt);
    }
  else
    {
      generate_copy_inout (elt, is_output, generate_element_ref (elt), &list);
      if (list == ((void*)0))
 return;
      mark_all_v_defs (list);
      if (is_output)
 sra_insert_after (bsi, list);
      else
 {
   sra_insert_before (bsi, list);
   if (use_all)
     mark_no_warning (elt);
 }
    }
}
