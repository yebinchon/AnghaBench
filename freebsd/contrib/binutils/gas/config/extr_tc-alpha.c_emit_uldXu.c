
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int X_add_number; } ;
typedef TYPE_1__ expressionS ;


 int AXP_REG_AT ;
 int AXP_REG_T10 ;
 int AXP_REG_T9 ;
 int _ (char*) ;
 scalar_t__ alpha_noat_on ;
 int as_bad (int ) ;
 int assemble_tokens (char*,TYPE_1__*,int,int) ;
 char** extXh_op ;
 char** extXl_op ;
 int memcpy (TYPE_1__*,TYPE_1__ const*,int) ;
 int set_tok_const (TYPE_1__,int) ;
 int set_tok_preg (TYPE_1__,int ) ;
 int set_tok_reg (TYPE_1__,int ) ;

__attribute__((used)) static void
emit_uldXu (const expressionS *tok,
     int ntok,
     const void * vlgsize)
{
  long lgsize = (long) vlgsize;
  expressionS newtok[3];

  if (alpha_noat_on)
    as_bad (_("macro requires $at register while noat in effect"));


  memcpy (newtok, tok, sizeof (expressionS) * ntok);
  newtok[0].X_add_number = AXP_REG_AT;
  assemble_tokens ("lda", newtok, ntok, 1);


  set_tok_reg (newtok[0], AXP_REG_T9);
  set_tok_const (newtok[1], 0);
  set_tok_preg (newtok[2], AXP_REG_AT);
  assemble_tokens ("ldq_u", newtok, 3, 1);


  set_tok_reg (newtok[0], AXP_REG_T10);
  set_tok_const (newtok[1], (1 << lgsize) - 1);
  assemble_tokens ("ldq_u", newtok, 3, 1);


  set_tok_reg (newtok[0], AXP_REG_T9);
  set_tok_reg (newtok[1], AXP_REG_AT);
  set_tok_reg (newtok[2], AXP_REG_T9);
  assemble_tokens (extXl_op[lgsize], newtok, 3, 1);


  set_tok_reg (newtok[0], AXP_REG_T10);
  set_tok_reg (newtok[2], AXP_REG_T10);
  assemble_tokens (extXh_op[lgsize], newtok, 3, 1);


  set_tok_reg (newtok[0], AXP_REG_T9);
  set_tok_reg (newtok[1], AXP_REG_T10);
  newtok[2] = tok[0];
  assemble_tokens ("or", newtok, 3, 1);
}
