
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct alpha_insn {size_t nfixups; long sequence; TYPE_2__* fixups; } ;
struct TYPE_13__ {scalar_t__ X_op; int X_add_number; } ;
typedef TYPE_3__ expressionS ;
struct TYPE_11__ {void* X_op; } ;
struct TYPE_12__ {TYPE_1__ exp; int reloc; } ;


 int AXP_OPCODE_BWX ;
 int AXP_REG_AT ;
 int AXP_REG_ZERO ;
 int DUMMY_RELOC_LITUSE_BASE ;
 int DUMMY_RELOC_LITUSE_BYTOFF ;
 size_t MAX_INSN_FIXUPS ;
 void* O_absent ;
 scalar_t__ O_constant ;
 int _ (char*) ;
 int alpha_gp_register ;
 scalar_t__ alpha_noat_on ;
 int alpha_target ;
 int as_bad (int ) ;
 int assemble_tokens_to_insn (char*,TYPE_3__*,int,struct alpha_insn*) ;
 int assert (int) ;
 int emit_insn (struct alpha_insn*) ;
 int emit_ir_load (TYPE_3__ const*,int,int ) ;
 char** extXl_op ;
 int * ldXu_op ;
 long load_expression (int ,TYPE_3__ const*,int*,int *) ;
 int set_tok_const (TYPE_3__,int ) ;
 int set_tok_preg (TYPE_3__,int) ;
 int set_tok_reg (TYPE_3__,int) ;

__attribute__((used)) static void
emit_ldXu (const expressionS *tok,
    int ntok,
    const void * vlgsize)
{
  if (alpha_target & AXP_OPCODE_BWX)
    emit_ir_load (tok, ntok, ldXu_op[(long) vlgsize]);
  else
    {
      expressionS newtok[3];
      struct alpha_insn insn;
      int basereg;
      long lituse;

      if (alpha_noat_on)
 as_bad (_("macro requires $at register while noat in effect"));

      if (ntok == 2)
 basereg = (tok[1].X_op == O_constant
     ? AXP_REG_ZERO : alpha_gp_register);
      else
 basereg = tok[2].X_add_number;


      lituse = load_expression (AXP_REG_AT, &tok[1], &basereg, ((void*)0));


      newtok[0] = tok[0];
      set_tok_const (newtok[1], 0);
      set_tok_preg (newtok[2], basereg);
      assemble_tokens_to_insn ("ldq_u", newtok, 3, &insn);

      if (lituse)
 {
   assert (insn.nfixups < MAX_INSN_FIXUPS);
   insn.fixups[insn.nfixups].reloc = DUMMY_RELOC_LITUSE_BASE;
   insn.fixups[insn.nfixups].exp.X_op = O_absent;
   insn.nfixups++;
   insn.sequence = lituse;
 }

      emit_insn (&insn);


      set_tok_reg (newtok[1], basereg);
      newtok[2] = newtok[0];
      assemble_tokens_to_insn (extXl_op[(long) vlgsize], newtok, 3, &insn);

      if (lituse)
 {
   assert (insn.nfixups < MAX_INSN_FIXUPS);
   insn.fixups[insn.nfixups].reloc = DUMMY_RELOC_LITUSE_BYTOFF;
   insn.fixups[insn.nfixups].exp.X_op = O_absent;
   insn.nfixups++;
   insn.sequence = lituse;
 }

      emit_insn (&insn);
    }
}
