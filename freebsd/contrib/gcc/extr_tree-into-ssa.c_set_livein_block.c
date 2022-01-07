
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int tree ;
struct def_blocks_d {int def_blocks; int livein_blocks; } ;
typedef enum need_phi_state { ____Placeholder_need_phi_state } need_phi_state ;
typedef TYPE_1__* basic_block ;
struct TYPE_4__ {int index; } ;


 int BASIC_BLOCK (int) ;
 int CDI_DOMINATORS ;
 int NEED_PHI_STATE_MAYBE ;
 int NEED_PHI_STATE_NO ;
 int bitmap_first_set_bit (int ) ;
 int bitmap_set_bit (int ,int ) ;
 int dominated_by_p (int ,TYPE_1__*,int ) ;
 struct def_blocks_d* get_def_blocks_for (int ) ;
 int get_phi_state (int ) ;
 int set_phi_state (int ,int ) ;

__attribute__((used)) static void
set_livein_block (tree var, basic_block bb)
{
  struct def_blocks_d *db_p;
  enum need_phi_state state = get_phi_state (var);

  db_p = get_def_blocks_for (var);


  bitmap_set_bit (db_p->livein_blocks, bb->index);







  if (state == NEED_PHI_STATE_NO)
    {
      int def_block_index = bitmap_first_set_bit (db_p->def_blocks);

      if (def_block_index == -1
   || ! dominated_by_p (CDI_DOMINATORS, bb,
                        BASIC_BLOCK (def_block_index)))
 set_phi_state (var, NEED_PHI_STATE_MAYBE);
    }
  else
    set_phi_state (var, NEED_PHI_STATE_MAYBE);
}
