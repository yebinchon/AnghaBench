
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_6__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_10__ {int X_add_symbol; } ;
struct TYPE_8__ {scalar_t__ type; TYPE_6__ exp; int pc_rel; } ;
struct score_it {int instruction; int relax_inst; scalar_t__ size; int relax_size; TYPE_2__ reloc; int type; } ;
typedef enum insn_class { ____Placeholder_insn_class } insn_class ;
typedef scalar_t__ bfd_boolean ;
struct TYPE_7__ {int is_insn; } ;
struct TYPE_9__ {char* fr_literal; TYPE_1__ tc_frag_data; } ;


 scalar_t__ BFD_RELOC_NONE ;
 scalar_t__ FALSE ;
 int GET_INSN_CLASS (int ) ;
 int INSN_CLASS_16 ;
 int INSN_CLASS_32 ;
 int INSN_CLASS_PCE ;
 scalar_t__ INSN_SIZE ;
 int Insn_Type_PCE ;
 int RELAX_ENCODE (int,int,int ,int ,int ,int) ;
 scalar_t__ RELAX_PAD_BYTE ;
 scalar_t__ TRUE ;
 void* adjust_paritybit (int,int) ;
 int dwarf2_emit_insn (int) ;
 int fix_new_score (TYPE_3__*,int,int,TYPE_6__*,int ,scalar_t__) ;
 int frag_grow (int) ;
 char* frag_more (scalar_t__) ;
 int frag_new (int ) ;
 TYPE_3__* frag_now ;
 scalar_t__ frag_now_fix () ;
 char* frag_var (int ,scalar_t__,int ,int ,int ,int ,int *) ;
 int frag_wane (TYPE_3__*) ;
 int g_opt ;
 int handle_dependency (struct score_it*) ;
 int md_number_to_chars (char*,int,int) ;
 int memcpy (struct score_it*,struct score_it*,int) ;
 int rs_machine_dependent ;

__attribute__((used)) static void
gen_insn_frag (struct score_it *part_1, struct score_it *part_2)
{
  char *p;
  bfd_boolean pce_p = FALSE;
  int relaxable_p = g_opt;
  int relax_size = 0;
  struct score_it *inst1 = part_1;
  struct score_it *inst2 = part_2;
  struct score_it backup_inst1;

  pce_p = (inst2) ? TRUE : FALSE;
  memcpy (&backup_inst1, inst1, sizeof (struct score_it));


  if (pce_p)
    {
      backup_inst1.instruction = ((backup_inst1.instruction & 0x7FFF) << 15)
                                  | (inst2->instruction & 0x7FFF);
      backup_inst1.instruction = adjust_paritybit (backup_inst1.instruction, INSN_CLASS_PCE);
      backup_inst1.relax_inst = 0x8000;
      backup_inst1.size = INSN_SIZE;
      backup_inst1.relax_size = 0;
      backup_inst1.type = Insn_Type_PCE;
    }
  else
    {
      backup_inst1.instruction = adjust_paritybit (backup_inst1.instruction,
         GET_INSN_CLASS (backup_inst1.type));
    }

  if (backup_inst1.relax_size != 0)
    {
      enum insn_class tmp;

      tmp = (backup_inst1.size == INSN_SIZE) ? INSN_CLASS_16 : INSN_CLASS_32;
      backup_inst1.relax_inst = adjust_paritybit (backup_inst1.relax_inst, tmp);
    }


  handle_dependency (&backup_inst1);



  if (frag_now_fix () != 0)
    {
      if (!frag_now->tc_frag_data.is_insn)
 frag_wane (frag_now);

      frag_new (0);
    }







  frag_grow (20);

  p = frag_more (backup_inst1.size);
  md_number_to_chars (p, backup_inst1.instruction, backup_inst1.size);






  if (pce_p)
    {
      if (inst1->reloc.type != BFD_RELOC_NONE)
 fix_new_score (frag_now, p - frag_now->fr_literal,
         inst1->size, &inst1->reloc.exp,
         inst1->reloc.pc_rel, inst1->reloc.type);

      if (inst2->reloc.type != BFD_RELOC_NONE)
 fix_new_score (frag_now, p - frag_now->fr_literal + 2,
         inst2->size, &inst2->reloc.exp, inst2->reloc.pc_rel, inst2->reloc.type);
    }
  else
    {
      if (backup_inst1.reloc.type != BFD_RELOC_NONE)
 fix_new_score (frag_now, p - frag_now->fr_literal,
         backup_inst1.size, &backup_inst1.reloc.exp,
         backup_inst1.reloc.pc_rel, backup_inst1.reloc.type);
    }


  relaxable_p &= (backup_inst1.relax_size != 0);
  relax_size = relaxable_p ? backup_inst1.relax_size : 0;

  p = frag_var (rs_machine_dependent, relax_size + RELAX_PAD_BYTE, 0,
                RELAX_ENCODE (backup_inst1.size, backup_inst1.relax_size,
                              backup_inst1.type, 0, 0, relaxable_p),
                backup_inst1.reloc.exp.X_add_symbol, 0, ((void*)0));

  if (relaxable_p)
    md_number_to_chars (p, backup_inst1.relax_inst, relax_size);

  memcpy (inst1, &backup_inst1, sizeof (struct score_it));
}
