
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int * tree ;
struct edge_to_cases_elt {int * case_labels; TYPE_1__* e; } ;
typedef TYPE_1__* edge ;
typedef int basic_block ;
struct TYPE_3__ {int src; } ;


 int * CASE_LABEL (int ) ;
 int NO_INSERT ;
 int * SWITCH_LABELS (int *) ;
 int TREE_VEC_ELT (int *,size_t) ;
 size_t TREE_VEC_LENGTH (int *) ;
 int edge_to_cases ;
 int find_edge (int ,int ) ;
 void** htab_find_slot (int ,struct edge_to_cases_elt*,int ) ;
 int label_to_block (int *) ;
 int record_switch_edge (int ,int ) ;
 int recording_case_labels_p () ;

__attribute__((used)) static tree
get_cases_for_edge (edge e, tree t)
{
  struct edge_to_cases_elt elt, *elt_p;
  void **slot;
  size_t i, n;
  tree vec;



  if (!recording_case_labels_p ())
    return ((void*)0);

restart:
  elt.e = e;
  elt.case_labels = ((void*)0);
  slot = htab_find_slot (edge_to_cases, &elt, NO_INSERT);

  if (slot)
    {
      elt_p = (struct edge_to_cases_elt *)*slot;
      return elt_p->case_labels;
    }





  vec = SWITCH_LABELS (t);
  n = TREE_VEC_LENGTH (vec);
  for (i = 0; i < n; i++)
    {
      tree lab = CASE_LABEL (TREE_VEC_ELT (vec, i));
      basic_block label_bb = label_to_block (lab);
      record_switch_edge (find_edge (e->src, label_bb), TREE_VEC_ELT (vec, i));
    }
  goto restart;
}
