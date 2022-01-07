
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mips16_constant {struct mips16_constant* next; int value; int mode; int label; } ;
typedef int rtx ;


 int GEN_INT (int) ;
 int GET_MODE_SIZE (int ) ;
 int dump_constants_1 (int ,int ,int ) ;
 int emit_barrier_after (int ) ;
 int emit_insn_after (int ,int ) ;
 int emit_label_after (int ,int ) ;
 int floor_log2 (int) ;
 int free (struct mips16_constant*) ;
 int gen_align (int ) ;

__attribute__((used)) static void
dump_constants (struct mips16_constant *constants, rtx insn)
{
  struct mips16_constant *c, *next;
  int align;

  align = 0;
  for (c = constants; c != ((void*)0); c = next)
    {

      if (align < GET_MODE_SIZE (c->mode))
 {
   int align_log = floor_log2 (GET_MODE_SIZE (c->mode));
   insn = emit_insn_after (gen_align (GEN_INT (align_log)), insn);
 }
      align = GET_MODE_SIZE (c->mode);

      insn = emit_label_after (c->label, insn);
      insn = dump_constants_1 (c->mode, c->value, insn);

      next = c->next;
      free (c);
    }

  emit_barrier_after (insn);
}
