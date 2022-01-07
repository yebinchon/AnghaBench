
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct expression {int * elts; } ;
typedef enum exp_opcode { ____Placeholder_exp_opcode } exp_opcode ;


 int EXP_ELEM_TO_BYTES (int) ;
 scalar_t__ alloca (int) ;
 int length_of_subexp (struct expression*,int) ;
 int memcpy (int *,int *,int ) ;
 int operator_length (struct expression*,int,int*,int*) ;

__attribute__((used)) static void
prefixify_subexp (struct expression *inexpr,
    struct expression *outexpr, int inend, int outbeg)
{
  int oplen;
  int args;
  int i;
  int *arglens;
  enum exp_opcode opcode;

  operator_length (inexpr, inend, &oplen, &args);



  inend -= oplen;
  memcpy (&outexpr->elts[outbeg], &inexpr->elts[inend],
   EXP_ELEM_TO_BYTES (oplen));
  outbeg += oplen;


  arglens = (int *) alloca (args * sizeof (int));
  for (i = args - 1; i >= 0; i--)
    {
      oplen = length_of_subexp (inexpr, inend);
      arglens[i] = oplen;
      inend -= oplen;
    }







  for (i = 0; i < args; i++)
    {
      oplen = arglens[i];
      inend += oplen;
      prefixify_subexp (inexpr, outexpr, inend, outbeg);
      outbeg += oplen;
    }
}
