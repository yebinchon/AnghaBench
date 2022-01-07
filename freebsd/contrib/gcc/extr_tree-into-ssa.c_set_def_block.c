
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int tree ;
struct def_blocks_d {int phi_blocks; int def_blocks; } ;
typedef enum need_phi_state { ____Placeholder_need_phi_state } need_phi_state ;
typedef TYPE_1__* basic_block ;
struct TYPE_3__ {int index; } ;


 int NEED_PHI_STATE_MAYBE ;
 int NEED_PHI_STATE_NO ;
 int NEED_PHI_STATE_UNKNOWN ;
 int bitmap_set_bit (int ,int ) ;
 struct def_blocks_d* get_def_blocks_for (int ) ;
 int get_phi_state (int ) ;
 int set_phi_state (int ,int ) ;

__attribute__((used)) static void
set_def_block (tree var, basic_block bb, bool phi_p)
{
  struct def_blocks_d *db_p;
  enum need_phi_state state;

  state = get_phi_state (var);
  db_p = get_def_blocks_for (var);


  bitmap_set_bit (db_p->def_blocks, bb->index);
  if (phi_p)
    bitmap_set_bit (db_p->phi_blocks, bb->index);
  if (state == NEED_PHI_STATE_UNKNOWN)
    set_phi_state (var, NEED_PHI_STATE_NO);
  else
    set_phi_state (var, NEED_PHI_STATE_MAYBE);
}
