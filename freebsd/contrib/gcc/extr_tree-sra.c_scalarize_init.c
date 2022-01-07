
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * tree ;
struct sra_elt {scalar_t__ use_block_copy; } ;
typedef int block_stmt_iterator ;


 int append_to_statement_list (int *,int **) ;
 int * bsi_stmt (int ) ;
 int gcc_assert (int *) ;
 int generate_copy_inout (struct sra_elt*,int,int ,int **) ;
 int generate_element_init (struct sra_elt*,int *,int **) ;
 int generate_element_ref (struct sra_elt*) ;
 int generate_element_zero (struct sra_elt*,int **) ;
 int mark_all_v_defs (int *) ;
 int sra_insert_after (int *,int *) ;
 int sra_replace (int *,int *) ;
 int * unshare_expr (int *) ;

__attribute__((used)) static void
scalarize_init (struct sra_elt *lhs_elt, tree rhs, block_stmt_iterator *bsi)
{
  bool result = 1;
  tree list = ((void*)0);


  if (rhs)
    {

      rhs = unshare_expr (rhs);
      result = generate_element_init (lhs_elt, rhs, &list);
    }



  generate_element_zero (lhs_elt, &list);

  if (!result)
    {






      tree list0 = ((void*)0);
      generate_copy_inout (lhs_elt, 1, generate_element_ref (lhs_elt),
      &list0);
      append_to_statement_list (list, &list0);
      list = list0;
    }

  if (lhs_elt->use_block_copy || !result)
    {



      if (list)
 {
   mark_all_v_defs (list);
   sra_insert_after (bsi, list);
 }
    }
  else
    {


      gcc_assert (list);
      mark_all_v_defs (bsi_stmt (*bsi));
      mark_all_v_defs (list);
      sra_replace (bsi, list);
    }
}
