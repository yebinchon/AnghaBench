
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int * tree ;
typedef scalar_t__ rtx ;
struct TYPE_2__ {int decl; } ;


 scalar_t__ ADDR_DIFF_VEC ;
 scalar_t__ ADDR_VEC ;
 int * DECL_INITIAL (int ) ;
 scalar_t__ GET_CODE (scalar_t__) ;
 scalar_t__ JUMP_P (scalar_t__) ;
 int NOTE_INSN_DELETED ;
 scalar_t__ PATTERN (scalar_t__) ;
 scalar_t__ SEQUENCE ;
 scalar_t__ XVECEXP (scalar_t__,int ,int) ;
 int XVECLEN (scalar_t__,int ) ;
 int active_insn_p (scalar_t__) ;
 TYPE_1__* cfun ;
 int change_scope (scalar_t__,int *,int *) ;
 int * choose_inner_scope (int *,int *) ;
 int delete_insn (scalar_t__) ;
 scalar_t__ emit_note (int ) ;
 scalar_t__ get_insns () ;
 int * insn_scope (scalar_t__) ;
 scalar_t__ next_active_insn (scalar_t__) ;
 int reorder_blocks () ;

void
reemit_insn_block_notes (void)
{
  tree cur_block = DECL_INITIAL (cfun->decl);
  rtx insn, note;

  insn = get_insns ();
  if (!active_insn_p (insn))
    insn = next_active_insn (insn);
  for (; insn; insn = next_active_insn (insn))
    {
      tree this_block;


      if (JUMP_P (insn)
   && (GET_CODE (PATTERN (insn)) == ADDR_VEC
       || GET_CODE (PATTERN (insn)) == ADDR_DIFF_VEC))
 continue;

      this_block = insn_scope (insn);


      if (GET_CODE (PATTERN (insn)) == SEQUENCE)
 {
   int i;
   rtx body = PATTERN (insn);

   this_block = ((void*)0);
   for (i = 0; i < XVECLEN (body, 0); i++)
     this_block = choose_inner_scope (this_block,
      insn_scope (XVECEXP (body, 0, i)));
 }
      if (! this_block)
 continue;

      if (this_block != cur_block)
 {
   change_scope (insn, cur_block, this_block);
   cur_block = this_block;
 }
    }


  note = emit_note (NOTE_INSN_DELETED);
  change_scope (note, cur_block, DECL_INITIAL (cfun->decl));
  delete_insn (note);

  reorder_blocks ();
}
