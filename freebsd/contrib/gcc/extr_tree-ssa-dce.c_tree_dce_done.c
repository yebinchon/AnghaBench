
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BITMAP_FREE (int ) ;
 int VEC_free (int ,int ,int ) ;
 int * control_dependence_map ;
 int free (int *) ;
 int heap ;
 int last_basic_block ;
 int last_stmt_necessary ;
 int processed ;
 int sbitmap_free (int ) ;
 int tree ;
 int visited_control_parents ;
 int worklist ;

__attribute__((used)) static void
tree_dce_done (bool aggressive)
{
  if (aggressive)
    {
      int i;

      for (i = 0; i < last_basic_block; ++i)
 BITMAP_FREE (control_dependence_map[i]);
      free (control_dependence_map);

      sbitmap_free (visited_control_parents);
      sbitmap_free (last_stmt_necessary);
    }

  sbitmap_free (processed);

  VEC_free (tree, heap, worklist);
}
