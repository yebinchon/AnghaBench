
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct occurrence {int bb_has_division; int num_divisions; } ;
typedef TYPE_1__* basic_block ;
struct TYPE_4__ {scalar_t__ aux; } ;


 int ENTRY_BLOCK_PTR ;
 int insert_bb (struct occurrence*,int ,int *) ;
 int occ_head ;
 struct occurrence* occ_new (TYPE_1__*,int *) ;

__attribute__((used)) static inline void
register_division_in (basic_block bb)
{
  struct occurrence *occ;

  occ = (struct occurrence *) bb->aux;
  if (!occ)
    {
      occ = occ_new (bb, ((void*)0));
      insert_bb (occ, ENTRY_BLOCK_PTR, &occ_head);
    }

  occ->bb_has_division = 1;
  occ->num_divisions++;
}
