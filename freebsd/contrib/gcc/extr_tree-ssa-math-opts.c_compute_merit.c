
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct occurrence {scalar_t__ num_divisions; int bb; struct occurrence* children; struct occurrence* next; } ;
typedef int basic_block ;


 int CDI_POST_DOMINATORS ;
 scalar_t__ dominated_by_p (int ,int ,int ) ;
 scalar_t__ flag_exceptions ;
 int single_noncomplex_succ (int ) ;

__attribute__((used)) static void
compute_merit (struct occurrence *occ)
{
  struct occurrence *occ_child;
  basic_block dom = occ->bb;

  for (occ_child = occ->children; occ_child; occ_child = occ_child->next)
    {
      basic_block bb;
      if (occ_child->children)
        compute_merit (occ_child);

      if (flag_exceptions)
 bb = single_noncomplex_succ (dom);
      else
 bb = dom;

      if (dominated_by_p (CDI_POST_DOMINATORS, bb, occ_child->bb))
        occ->num_divisions += occ_child->num_divisions;
    }
}
