
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree_stmt_iterator ;
typedef int * tree ;
typedef int basic_block ;


 int ENTRY_BLOCK_PTR ;
 scalar_t__ computed_goto_p (int *) ;
 int create_basic_block (int *,int *,int ) ;
 int found_computed_goto ;
 int set_bb_for_stmt (int *,int ) ;
 scalar_t__ stmt_ends_bb_p (int *) ;
 scalar_t__ stmt_starts_bb_p (int *,int *) ;
 int tsi_end_p (int ) ;
 int tsi_next (int *) ;
 int * tsi_split_statement_list_before (int *) ;
 int tsi_start (int *) ;
 int * tsi_stmt (int ) ;

__attribute__((used)) static void
make_blocks (tree stmt_list)
{
  tree_stmt_iterator i = tsi_start (stmt_list);
  tree stmt = ((void*)0);
  bool start_new_block = 1;
  bool first_stmt_of_list = 1;
  basic_block bb = ENTRY_BLOCK_PTR;

  while (!tsi_end_p (i))
    {
      tree prev_stmt;

      prev_stmt = stmt;
      stmt = tsi_stmt (i);




      if (start_new_block || stmt_starts_bb_p (stmt, prev_stmt))
 {
   if (!first_stmt_of_list)
     stmt_list = tsi_split_statement_list_before (&i);
   bb = create_basic_block (stmt_list, ((void*)0), bb);
   start_new_block = 0;
 }



      set_bb_for_stmt (stmt, bb);

      if (computed_goto_p (stmt))
 found_computed_goto = 1;



      if (stmt_ends_bb_p (stmt))
 start_new_block = 1;

      tsi_next (&i);
      first_stmt_of_list = 0;
    }
}
