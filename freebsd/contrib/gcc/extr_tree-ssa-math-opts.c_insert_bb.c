
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct occurrence {struct occurrence* next; struct occurrence* children; TYPE_1__* bb; } ;
typedef TYPE_1__* basic_block ;
struct TYPE_7__ {int aux; } ;


 int CDI_DOMINATORS ;
 int gcc_assert (int) ;
 TYPE_1__* nearest_common_dominator (int ,TYPE_1__*,TYPE_1__*) ;
 struct occurrence* occ_new (TYPE_1__*,struct occurrence*) ;

__attribute__((used)) static void
insert_bb (struct occurrence *new_occ, basic_block idom,
    struct occurrence **p_head)
{
  struct occurrence *occ, **p_occ;

  for (p_occ = p_head; (occ = *p_occ) != ((void*)0); )
    {
      basic_block bb = new_occ->bb, occ_bb = occ->bb;
      basic_block dom = nearest_common_dominator (CDI_DOMINATORS, occ_bb, bb);
      if (dom == bb)
 {


   *p_occ = occ->next;
   occ->next = new_occ->children;
   new_occ->children = occ;


 }

      else if (dom == occ_bb)
 {

   insert_bb (new_occ, dom, &occ->children);
   return;
 }

      else if (dom != idom)
 {
   gcc_assert (!dom->aux);




   *p_occ = occ->next;
   new_occ->next = occ;
   occ->next = ((void*)0);




          new_occ = occ_new (dom, new_occ);
 }

      else
 {

   p_occ = &occ->next;
 }
    }


  new_occ->next = *p_head;
  *p_head = new_occ;
}
