
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int fr_literal; } ;
struct TYPE_5__ {scalar_t__ type; int pc_rel; int exp; } ;
struct TYPE_6__ {int size; TYPE_1__ reloc; int instruction; scalar_t__ relax; scalar_t__ error; } ;


 scalar_t__ BFD_RELOC_UNUSED ;
 int INSN_SIZE ;
 int THUMB_SIZE ;
 int as_bad (char*,scalar_t__,char const*) ;
 int assert (int) ;
 int dwarf2_emit_insn (int) ;
 int fix_new_arm (TYPE_3__*,char*,int,int *,int ,scalar_t__) ;
 char* frag_more (int) ;
 TYPE_3__* frag_now ;
 TYPE_2__ inst ;
 int md_number_to_chars (char*,int ,int) ;
 int output_relax_insn () ;
 int put_thumb32_insn (char*,int ) ;
 scalar_t__ thumb_mode ;

__attribute__((used)) static void
output_inst (const char * str)
{
  char * to = ((void*)0);

  if (inst.error)
    {
      as_bad ("%s -- `%s'", inst.error, str);
      return;
    }
  if (inst.relax) {
      output_relax_insn();
      return;
  }
  if (inst.size == 0)
    return;

  to = frag_more (inst.size);

  if (thumb_mode && (inst.size > THUMB_SIZE))
    {
      assert (inst.size == (2 * THUMB_SIZE));
      put_thumb32_insn (to, inst.instruction);
    }
  else if (inst.size > INSN_SIZE)
    {
      assert (inst.size == (2 * INSN_SIZE));
      md_number_to_chars (to, inst.instruction, INSN_SIZE);
      md_number_to_chars (to + INSN_SIZE, inst.instruction, INSN_SIZE);
    }
  else
    md_number_to_chars (to, inst.instruction, inst.size);

  if (inst.reloc.type != BFD_RELOC_UNUSED)
    fix_new_arm (frag_now, to - frag_now->fr_literal,
   inst.size, & inst.reloc.exp, inst.reloc.pc_rel,
   inst.reloc.type);

  dwarf2_emit_insn (inst.size);
}
