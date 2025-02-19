
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ X_op; int X_add_number; } ;
typedef TYPE_1__ expressionS ;


 int AXP_REG_RA ;
 int AXP_REG_ZERO ;
 scalar_t__ O_cpregister ;
 scalar_t__ O_pregister ;
 scalar_t__ O_register ;
 int assemble_tokens (char const*,TYPE_1__*,int,int ) ;
 int regno (int ) ;
 int set_tok_const (TYPE_1__,int) ;
 int set_tok_cpreg (TYPE_1__,int) ;
 int set_tok_reg (TYPE_1__,int) ;
 scalar_t__ strcmp (char const*,char*) ;

__attribute__((used)) static void
emit_retjcr (const expressionS *tok,
      int ntok,
      const void * vopname)
{
  const char *opname = (const char *) vopname;
  expressionS newtok[3];
  int r, tokidx = 0;

  if (tokidx < ntok && tok[tokidx].X_op == O_register)
    r = regno (tok[tokidx++].X_add_number);
  else
    r = AXP_REG_ZERO;

  set_tok_reg (newtok[0], r);

  if (tokidx < ntok &&
      (tok[tokidx].X_op == O_pregister || tok[tokidx].X_op == O_cpregister))
    r = regno (tok[tokidx++].X_add_number);
  else
    r = AXP_REG_RA;

  set_tok_cpreg (newtok[1], r);

  if (tokidx < ntok)
    newtok[2] = tok[tokidx];
  else
    set_tok_const (newtok[2], strcmp (opname, "ret") == 0);

  assemble_tokens (opname, newtok, 3, 0);
}
