
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


typedef int tree ;
struct loop {unsigned int num_nodes; } ;
typedef int block_stmt_iterator ;
typedef TYPE_1__* basic_block ;
struct TYPE_9__ {int aux; } ;


 int CDI_POST_DOMINATORS ;
 int NULL_TREE ;
 int TDF_DETAILS ;
 int add_to_predicate_list (TYPE_1__*,int ) ;
 int bsi_end_p (int ) ;
 int bsi_next (int *) ;
 int bsi_start (TYPE_1__*) ;
 int bsi_stmt (int ) ;
 int clean_predicate_lists (struct loop*) ;
 int combine_blocks (struct loop*) ;
 scalar_t__ dump_file ;
 int dump_flags ;
 int fprintf (scalar_t__,char*) ;
 int free (TYPE_1__**) ;
 int free_dominance_info (int ) ;
 int if_convertible_loop_p (struct loop*,int) ;
 TYPE_1__** ifc_bbs ;
 TYPE_1__* single_succ (TYPE_1__*) ;
 scalar_t__ single_succ_p (TYPE_1__*) ;
 int tree_if_convert_stmt (struct loop*,int ,int ,int *) ;

__attribute__((used)) static bool
tree_if_conversion (struct loop *loop, bool for_vectorizer)
{
  basic_block bb;
  block_stmt_iterator itr;
  unsigned int i;

  ifc_bbs = ((void*)0);



  if (!if_convertible_loop_p (loop, for_vectorizer))
    {
      if (dump_file && (dump_flags & TDF_DETAILS))
 fprintf (dump_file,"-------------------------\n");
      if (ifc_bbs)
 {
   free (ifc_bbs);
   ifc_bbs = ((void*)0);
 }
      free_dominance_info (CDI_POST_DOMINATORS);
      return 0;
    }


  for (i = 0; i < loop->num_nodes; i++)
    {
      tree cond;

      bb = ifc_bbs [i];


      cond = bb->aux;




      for (itr = bsi_start (bb); !bsi_end_p (itr); )
 {
   tree t = bsi_stmt (itr);
   cond = tree_if_convert_stmt (loop, t, cond, &itr);
   if (!bsi_end_p (itr))
     bsi_next (&itr);
 }



      if (single_succ_p (bb))
 {
   basic_block bb_n = single_succ (bb);
   if (cond != NULL_TREE)
     add_to_predicate_list (bb_n, cond);
 }
    }




  combine_blocks (loop);


  clean_predicate_lists (loop);
  free (ifc_bbs);
  ifc_bbs = ((void*)0);

  return 1;
}
