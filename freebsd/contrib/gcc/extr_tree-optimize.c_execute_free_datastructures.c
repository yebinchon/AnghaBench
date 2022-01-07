
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CDI_DOMINATORS ;
 int CDI_POST_DOMINATORS ;
 int delete_tree_ssa () ;
 int free_dominance_info (int ) ;

__attribute__((used)) static unsigned int
execute_free_datastructures (void)
{


  free_dominance_info (CDI_DOMINATORS);
  free_dominance_info (CDI_POST_DOMINATORS);



  delete_tree_ssa ();
  return 0;
}
