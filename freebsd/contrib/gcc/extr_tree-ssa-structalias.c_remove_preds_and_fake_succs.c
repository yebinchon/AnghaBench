
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* constraint_graph_t ;
typedef int bitmap ;
struct TYPE_3__ {unsigned int size; int * preds; int * implicit_preds; scalar_t__* succs; } ;


 int BITMAP_FREE (scalar_t__) ;
 unsigned int FIRST_REF_NODE ;
 unsigned int VEC_length (int ,int ) ;
 int bitmap_clear_range (scalar_t__,unsigned int,unsigned int) ;
 int bitmap_obstack_release (int *) ;
 int free (int *) ;
 int predbitmap_obstack ;
 int varinfo_t ;
 int varmap ;
 scalar_t__* xrealloc (scalar_t__*,int) ;

__attribute__((used)) static void
remove_preds_and_fake_succs (constraint_graph_t graph)
{
  unsigned int i;



  for (i = 0; i < FIRST_REF_NODE; i++)
    {
      if (graph->succs[i])
 bitmap_clear_range (graph->succs[i], FIRST_REF_NODE,
       FIRST_REF_NODE * 2);
    }


  for (i = FIRST_REF_NODE; i < graph->size; i++)
    {
      if (graph->succs[i])
 BITMAP_FREE (graph->succs[i]);
    }



  graph->size = VEC_length (varinfo_t, varmap);
  graph->succs = xrealloc (graph->succs, graph->size * sizeof (bitmap));

  free (graph->implicit_preds);
  graph->implicit_preds = ((void*)0);
  free (graph->preds);
  graph->preds = ((void*)0);
  bitmap_obstack_release (&predbitmap_obstack);
}
