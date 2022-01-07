
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef scalar_t__ rtx ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;
typedef TYPE_1__* btr_user ;
typedef TYPE_2__* btr_def ;
typedef int bitmap ;
typedef TYPE_3__* basic_block ;
struct TYPE_14__ {int index; } ;
struct TYPE_13__ {scalar_t__ insn; int btr; int other_btr_uses_before_def; TYPE_1__* uses; int live_range; int cost; scalar_t__ luid; TYPE_3__* bb; } ;
struct TYPE_12__ {scalar_t__ use; int insn; struct TYPE_12__* next; } ;
typedef int HARD_REG_SET ;


 scalar_t__ BB_END (TYPE_3__*) ;
 scalar_t__ BB_HEAD (TYPE_3__*) ;
 scalar_t__ GET_MODE (scalar_t__) ;
 int INSN_P (scalar_t__) ;
 int INSN_UID (scalar_t__) ;
 scalar_t__ JUMP_P (scalar_t__) ;
 scalar_t__ LABEL_P (scalar_t__) ;
 scalar_t__ NEXT_INSN (scalar_t__) ;
 scalar_t__ PREV_INSN (scalar_t__) ;
 scalar_t__ SET_DEST (scalar_t__) ;
 scalar_t__ SET_SRC (scalar_t__) ;
 scalar_t__ TEST_HARD_REG_BIT (int ,int) ;
 scalar_t__ VOIDmode ;
 int add_btr_to_live_range (TYPE_2__*,int) ;
 int basic_block_freq (TYPE_3__*) ;
 int bitmap_copy (int ,int ) ;
 int * btrs_live ;
 scalar_t__ can_throw_internal (scalar_t__) ;
 int clear_btr_from_live_range (TYPE_2__*) ;
 int combine_btr_defs (TYPE_2__*,int *) ;
 int delete_insn (scalar_t__) ;
 scalar_t__ dump_file ;
 scalar_t__ emit_insn_after (scalar_t__,scalar_t__) ;
 int fprintf (scalar_t__,char*,int,int) ;
 int gcc_assert (int) ;
 scalar_t__ gen_move_insn (scalar_t__,scalar_t__) ;
 scalar_t__ gen_rtx_REG (scalar_t__,int) ;
 int* regs_ever_live ;
 int replace_rtx (int ,scalar_t__,scalar_t__) ;
 scalar_t__ single_set (scalar_t__) ;

__attribute__((used)) static void
move_btr_def (basic_block new_def_bb, int btr, btr_def def, bitmap live_range,
      HARD_REG_SET *btrs_live_in_range)
{





  basic_block b = new_def_bb;
  rtx insp = BB_HEAD (b);
  rtx old_insn = def->insn;
  rtx src;
  rtx btr_rtx;
  rtx new_insn;
  enum machine_mode btr_mode;
  btr_user user;
  rtx set;

  if (dump_file)
    fprintf(dump_file, "migrating to basic block %d, using reg %d\n",
     new_def_bb->index, btr);

  clear_btr_from_live_range (def);
  def->btr = btr;
  def->bb = new_def_bb;
  def->luid = 0;
  def->cost = basic_block_freq (new_def_bb);
  bitmap_copy (def->live_range, live_range);
  combine_btr_defs (def, btrs_live_in_range);
  btr = def->btr;
  def->other_btr_uses_before_def
    = TEST_HARD_REG_BIT (btrs_live[b->index], btr) ? 1 : 0;
  add_btr_to_live_range (def, 1);
  if (LABEL_P (insp))
    insp = NEXT_INSN (insp);





  if (def->other_btr_uses_before_def)
    {
      insp = BB_END (b);
      for (insp = BB_END (b); ! INSN_P (insp); insp = PREV_INSN (insp))
 gcc_assert (insp != BB_HEAD (b));

      if (JUMP_P (insp) || can_throw_internal (insp))
 insp = PREV_INSN (insp);
    }

  set = single_set (old_insn);
  src = SET_SRC (set);
  btr_mode = GET_MODE (SET_DEST (set));
  btr_rtx = gen_rtx_REG (btr_mode, btr);

  new_insn = gen_move_insn (btr_rtx, src);


  def->insn = emit_insn_after (new_insn, insp);

  regs_ever_live[btr] = 1;

  if (dump_file)
    fprintf (dump_file, "New pt is insn %d, inserted after insn %d\n",
      INSN_UID (def->insn), INSN_UID (insp));


  delete_insn (old_insn);



  for (user = def->uses; user != ((void*)0); user = user->next)
    {




      rtx replacement_rtx;
      if (GET_MODE (user->use) == GET_MODE (btr_rtx)
   || GET_MODE (user->use) == VOIDmode)
 replacement_rtx = btr_rtx;
      else
 replacement_rtx = gen_rtx_REG (GET_MODE (user->use), btr);
      replace_rtx (user->insn, user->use, replacement_rtx);
      user->use = replacement_rtx;
    }
}
