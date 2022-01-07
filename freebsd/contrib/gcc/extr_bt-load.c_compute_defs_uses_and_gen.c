
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_25__ TYPE_6__ ;
typedef struct TYPE_24__ TYPE_5__ ;
typedef struct TYPE_23__ TYPE_4__ ;
typedef struct TYPE_22__ TYPE_3__ ;
typedef struct TYPE_21__ TYPE_2__ ;
typedef struct TYPE_20__ TYPE_1__ ;


typedef int sbitmap ;
typedef scalar_t__ rtx ;
typedef int fibheap_t ;
struct TYPE_22__ {int btrs_written_in_block; int btrs_live_in_block; TYPE_4__* users_this_bb; int bb_gen; int * btr_defset; } ;
typedef TYPE_3__ defs_uses_info ;
typedef TYPE_4__* btr_user ;
typedef int * btr_def_group ;
typedef TYPE_5__* btr_def ;
typedef TYPE_6__* basic_block ;
struct TYPE_21__ {TYPE_1__* rtl; } ;
struct TYPE_25__ {TYPE_2__ il; } ;
struct TYPE_24__ {struct TYPE_24__* next_this_bb; } ;
struct TYPE_23__ {int other_use_this_block; scalar_t__ insn; struct TYPE_23__* next; scalar_t__ use; } ;
struct TYPE_20__ {int global_live_at_end; int global_live_at_start; } ;
typedef int HARD_REG_SET ;


 int AND_HARD_REG_SET (int ,int ) ;
 scalar_t__ ASM_INPUT ;
 TYPE_6__* BASIC_BLOCK (int) ;
 scalar_t__ BB_END (TYPE_6__*) ;
 scalar_t__ BB_HEAD (TYPE_6__*) ;
 scalar_t__ CALL_P (scalar_t__) ;
 int CLEAR_HARD_REG_SET (int ) ;
 int COMPL_HARD_REG_SET (int ,int ) ;
 int COPY_HARD_REG_SET (int ,int ) ;
 scalar_t__ GET_CODE (scalar_t__) ;
 scalar_t__ INSN_P (scalar_t__) ;
 int INSN_UID (scalar_t__) ;
 int IOR_HARD_REG_SET (int ,int ) ;
 scalar_t__ JUMP_P (scalar_t__) ;
 scalar_t__ NEXT_INSN (scalar_t__) ;
 int NULL_RTX ;
 int NUM_FIXED_BLOCKS ;
 scalar_t__ PARALLEL ;
 scalar_t__ PATTERN (scalar_t__) ;
 scalar_t__ PREV_INSN (scalar_t__) ;
 int REGNO (scalar_t__) ;
 scalar_t__ REGNO_REG_SET_P (int ,int) ;
 int REG_SET_TO_HARD_REG_SET (int ,int ) ;
 scalar_t__ RETURN ;
 int SET_BIT (int ,int) ;
 int SET_HARD_REG_BIT (int ,int) ;
 scalar_t__ TEST_HARD_REG_BIT (int ,int) ;
 scalar_t__ XVECEXP (scalar_t__,int ,int) ;
 int XVECLEN (scalar_t__,int ) ;
 TYPE_5__* add_btr_def (int ,TYPE_6__*,int,scalar_t__,int,scalar_t__,int **) ;
 int all_btrs ;
 scalar_t__ btr_referenced_p (scalar_t__,int *) ;
 int * btrs_live ;
 int * btrs_live_at_end ;
 int call_used_reg_set ;
 scalar_t__ can_throw_internal (scalar_t__) ;
 scalar_t__ current_function_has_nonlocal_label ;
 int dump_btrs_live (int) ;
 scalar_t__ dump_file ;
 int first_btr ;
 scalar_t__ insn_sets_btr_p (scalar_t__,int ,int*) ;
 int last_btr ;
 int n_basic_blocks ;
 TYPE_4__* new_btr_user (TYPE_6__*,int,scalar_t__) ;
 int note_btr_set (int ,int ,TYPE_3__*) ;
 int note_other_use_this_block (int,TYPE_4__*) ;
 int note_stores (scalar_t__,int (*) (int ,int ,TYPE_3__*),TYPE_3__*) ;
 scalar_t__ refers_to_regno_p (int,int,scalar_t__,int *) ;
 int * regno_reg_rtx ;
 int sbitmap_difference (int ,int ,int ) ;
 int sbitmap_vector_zero (int *,int) ;
 int sbitmap_zero (int ) ;

__attribute__((used)) static void
compute_defs_uses_and_gen (fibheap_t all_btr_defs, btr_def *def_array,
      btr_user *use_array, sbitmap *btr_defset,
      sbitmap *bb_gen, HARD_REG_SET *btrs_written)
{






  int i;
  int insn_luid = 0;
  btr_def_group all_btr_def_groups = ((void*)0);
  defs_uses_info info;

  sbitmap_vector_zero (bb_gen, n_basic_blocks);
  for (i = NUM_FIXED_BLOCKS; i < n_basic_blocks; i++)
    {
      basic_block bb = BASIC_BLOCK (i);
      int reg;
      btr_def defs_this_bb = ((void*)0);
      rtx insn;
      rtx last;
      int can_throw = 0;

      info.users_this_bb = ((void*)0);
      info.bb_gen = bb_gen[i];
      info.btr_defset = btr_defset;

      CLEAR_HARD_REG_SET (info.btrs_live_in_block);
      CLEAR_HARD_REG_SET (info.btrs_written_in_block);
      for (reg = first_btr; reg <= last_btr; reg++)
 if (TEST_HARD_REG_BIT (all_btrs, reg)
     && REGNO_REG_SET_P (bb->il.rtl->global_live_at_start, reg))
   SET_HARD_REG_BIT (info.btrs_live_in_block, reg);

      for (insn = BB_HEAD (bb), last = NEXT_INSN (BB_END (bb));
    insn != last;
    insn = NEXT_INSN (insn), insn_luid++)
 {
   if (INSN_P (insn))
     {
       int regno;
       int insn_uid = INSN_UID (insn);

       if (insn_sets_btr_p (insn, 0, &regno))
  {
    btr_def def = add_btr_def (
        all_btr_defs, bb, insn_luid, insn, regno,
        TEST_HARD_REG_BIT (info.btrs_live_in_block, regno),
        &all_btr_def_groups);

    def_array[insn_uid] = def;
    SET_HARD_REG_BIT (info.btrs_written_in_block, regno);
    SET_HARD_REG_BIT (info.btrs_live_in_block, regno);
    sbitmap_difference (bb_gen[i], bb_gen[i],
          btr_defset[regno - first_btr]);
    SET_BIT (bb_gen[i], insn_uid);
    def->next_this_bb = defs_this_bb;
    defs_this_bb = def;
    SET_BIT (btr_defset[regno - first_btr], insn_uid);
    note_other_use_this_block (regno, info.users_this_bb);
  }

       else if (current_function_has_nonlocal_label
         && GET_CODE (PATTERN (insn)) == ASM_INPUT)
  {
    btr_user user;



    for (user = info.users_this_bb; user != ((void*)0);
         user = user->next)
      if (user->use)
        user->other_use_this_block = 1;
    IOR_HARD_REG_SET (info.btrs_written_in_block, all_btrs);
    IOR_HARD_REG_SET (info.btrs_live_in_block, all_btrs);
    sbitmap_zero (info.bb_gen);
  }
       else
  {
    if (btr_referenced_p (PATTERN (insn), ((void*)0)))
      {
        btr_user user = new_btr_user (bb, insn_luid, insn);

        use_array[insn_uid] = user;
        if (user->use)
   SET_HARD_REG_BIT (info.btrs_live_in_block,
       REGNO (user->use));
        else
   {
     int reg;
     for (reg = first_btr; reg <= last_btr; reg++)
       if (TEST_HARD_REG_BIT (all_btrs, reg)
    && refers_to_regno_p (reg, reg + 1, user->insn,
            ((void*)0)))
         {
    note_other_use_this_block (reg,
          info.users_this_bb);
    SET_HARD_REG_BIT (info.btrs_live_in_block, reg);
         }
     note_stores (PATTERN (insn), note_btr_set, &info);
   }
        user->next = info.users_this_bb;
        info.users_this_bb = user;
      }
    if (CALL_P (insn))
      {
        HARD_REG_SET *clobbered = &call_used_reg_set;
        HARD_REG_SET call_saved;
        rtx pat = PATTERN (insn);
        int i;


        if (GET_CODE (pat) == PARALLEL)
   for (i = XVECLEN (pat, 0) - 1; i >= 0; i--)
     if (GET_CODE (XVECEXP (pat, 0, i)) == RETURN)
       {
         COMPL_HARD_REG_SET (call_saved,
        call_used_reg_set);
         clobbered = &call_saved;
       }

        for (regno = first_btr; regno <= last_btr; regno++)
   if (TEST_HARD_REG_BIT (*clobbered, regno))
     note_btr_set (regno_reg_rtx[regno], NULL_RTX, &info);
      }
  }
     }
 }

      COPY_HARD_REG_SET (btrs_live[i], info.btrs_live_in_block);
      COPY_HARD_REG_SET (btrs_written[i], info.btrs_written_in_block);

      REG_SET_TO_HARD_REG_SET (btrs_live_at_end[i], bb->il.rtl->global_live_at_end);


      for (insn = BB_END (bb); insn != BB_HEAD (bb) && ! INSN_P (insn); )
 insn = PREV_INSN (insn);





      if (can_throw_internal (insn))
 {
   HARD_REG_SET tmp;

   COPY_HARD_REG_SET (tmp, call_used_reg_set);
   AND_HARD_REG_SET (tmp, all_btrs);
   IOR_HARD_REG_SET (btrs_live_at_end[i], tmp);
   can_throw = 1;
 }
      if (can_throw || JUMP_P (insn))
 {
   int regno;

   for (regno = first_btr; regno <= last_btr; regno++)
     if (refers_to_regno_p (regno, regno+1, insn, ((void*)0)))
       SET_HARD_REG_BIT (btrs_live_at_end[i], regno);
 }

      if (dump_file)
 dump_btrs_live(i);
    }
}
