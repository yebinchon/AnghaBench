
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;
typedef struct TYPE_13__ TYPE_12__ ;


struct alpha_insn {int nfixups; long sequence; TYPE_2__* fixups; } ;
typedef int offsetT ;
struct TYPE_16__ {int X_add_number; int X_op; int * X_add_symbol; } ;
typedef TYPE_3__ expressionS ;
struct TYPE_14__ {int X_op; } ;
struct TYPE_15__ {TYPE_1__ exp; void* reloc; } ;
struct TYPE_13__ {int * symbol; } ;


 int AXP_REG_AT ;
 int AXP_REG_ZERO ;
 void* BFD_RELOC_ALPHA_ELF_LITERAL ;
 void* BFD_RELOC_ALPHA_LITERAL ;
 void* DUMMY_RELOC_LITUSE_BASE ;
 int MAX_INSN_FIXUPS ;
 int O_absent ;




 int _ (char*) ;
 int absolute_section ;
 int add_to_link_pool (int *,int *,int) ;
 int add_to_literal_pool (int *,int,int *,int) ;
 TYPE_12__ alpha_evax_proc ;
 int alpha_gp_register ;
 int alpha_lit8_literal ;
 int * alpha_lit8_section ;
 int * alpha_lit8_symbol ;
 int * alpha_lita_section ;
 int * alpha_lita_symbol ;
 scalar_t__ alpha_noat_on ;
 int as_bad (int ) ;
 int as_fatal (int ) ;
 int assemble_tokens (char*,TYPE_3__*,int,int ) ;
 int assemble_tokens_to_insn (char*,TYPE_3__*,int,struct alpha_insn*) ;
 int assert (int) ;
 int create_literal_section (char*,int **,int **) ;
 int emit_insn (struct alpha_insn*) ;
 int next_sequence_num ;
 int range_signed_16 (int) ;
 int range_signed_32 (int) ;
 int * section_symbol (int ) ;
 int set_tok_const (TYPE_3__,int) ;
 int set_tok_preg (TYPE_3__,int) ;
 int set_tok_reg (TYPE_3__,int) ;
 int set_tok_sym (TYPE_3__,int *,int) ;
 int sign_extend_16 (int) ;

__attribute__((used)) static long
load_expression (int targreg,
   const expressionS *exp,
   int *pbasereg,
   expressionS *poffset)
{
  long emit_lituse = 0;
  offsetT addend = exp->X_add_number;
  int basereg = *pbasereg;
  struct alpha_insn insn;
  expressionS newtok[3];

  switch (exp->X_op)
    {
    case 128:
      {
 emit_insn (&insn);


 if (basereg != alpha_gp_register && basereg != AXP_REG_ZERO)
   {


     set_tok_reg (newtok[1], basereg);
     set_tok_reg (newtok[2], targreg);
     assemble_tokens ("addq", newtok, 3, 0);
   }

 basereg = targreg;
      }
      break;

    case 130:
      break;

    case 129:



      set_tok_reg (newtok[0], targreg);
      newtok[1] = *exp;
      set_tok_preg (newtok[2], basereg);
      assemble_tokens ("lda", newtok, 3, 0);

      if (poffset)
 set_tok_const (*poffset, 0);
      return 0;

    case 131:
      if (exp->X_add_number > 0)
 as_bad (_("bignum invalid; zero assumed"));
      else
 as_bad (_("floating point number invalid; zero assumed"));
      addend = 0;
      break;

    default:
      as_bad (_("can't handle expression"));
      addend = 0;
      break;
    }

  if (!range_signed_32 (addend))
    {
      offsetT lit;
      long seq_num = next_sequence_num--;
      if (alpha_lit8_section == ((void*)0))
 {
   create_literal_section (".lit8",
      &alpha_lit8_section,
      &alpha_lit8_symbol);







 }

      lit = add_to_literal_pool (((void*)0), addend, alpha_lit8_section, 8) - 0x8000;
      if (lit >= 0x8000)
 as_fatal (_("overflow in literal (.lit8) table"));



      if (targreg == basereg)
 {
   if (alpha_noat_on)
     as_bad (_("macro requires $at register while noat in effect"));
   if (targreg == AXP_REG_AT)
     as_bad (_("macro requires $at while $at in use"));

   set_tok_reg (newtok[0], AXP_REG_AT);
 }
      else
 set_tok_reg (newtok[0], targreg);






      set_tok_preg (newtok[2], alpha_gp_register);

      assemble_tokens_to_insn ("ldq", newtok, 3, &insn);

      assert (insn.nfixups == 1);






      insn.sequence = seq_num;

      emit_insn (&insn);



      set_tok_const (newtok[1], lit);
      set_tok_preg (newtok[2], newtok[0].X_add_number);

      assemble_tokens_to_insn ("ldq", newtok, 3, &insn);

      assert (insn.nfixups < MAX_INSN_FIXUPS);
      insn.fixups[insn.nfixups].reloc = DUMMY_RELOC_LITUSE_BASE;
      insn.fixups[insn.nfixups].exp.X_op = O_absent;
      insn.nfixups++;
      insn.sequence = seq_num;
      emit_lituse = 0;

      emit_insn (&insn);



      if (basereg != AXP_REG_ZERO)
 {
   set_tok_reg (newtok[1], basereg);
   set_tok_reg (newtok[2], targreg);
   assemble_tokens ("addq", newtok, 3, 0);
 }


      if (poffset)
 set_tok_const (*poffset, 0);
      *pbasereg = targreg;
    }
  else
    {
      offsetT low, high, extra, tmp;



      low = sign_extend_16 (addend);
      tmp = addend - low;
      high = sign_extend_16 (tmp >> 16);

      if (tmp - (high << 16))
 {
   extra = 0x4000;
   tmp -= 0x40000000;
   high = sign_extend_16 (tmp >> 16);
 }
      else
 extra = 0;

      set_tok_reg (newtok[0], targreg);
      set_tok_preg (newtok[2], basereg);

      if (extra)
 {

   set_tok_const (newtok[1], extra);
   assemble_tokens ("ldah", newtok, 3, 0);
   set_tok_preg (newtok[2], basereg = targreg);
 }

      if (high)
 {

   set_tok_const (newtok[1], high);
   assemble_tokens ("ldah", newtok, 3, 0);
   basereg = targreg;
   set_tok_preg (newtok[2], basereg);
 }

      if ((low && !poffset) || (!poffset && basereg != targreg))
 {

   set_tok_const (newtok[1], low);
   assemble_tokens ("lda", newtok, 3, 0);
   basereg = targreg;
   low = 0;
 }

      if (poffset)
 set_tok_const (*poffset, low);
      *pbasereg = basereg;
    }

  return emit_lituse;
}
