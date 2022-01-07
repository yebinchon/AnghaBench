
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ rtx ;
typedef scalar_t__ RTX_CODE ;


 scalar_t__ GET_CODE (scalar_t__) ;
 char* GET_RTX_FORMAT (scalar_t__) ;
 int GET_RTX_LENGTH (scalar_t__) ;
 scalar_t__ MATCH_DUP ;
 scalar_t__ MATCH_OPERAND ;
 scalar_t__ MATCH_OPERATOR ;
 scalar_t__ MATCH_OP_DUP ;
 scalar_t__ MATCH_PARALLEL ;
 scalar_t__ MATCH_PAR_DUP ;
 scalar_t__ MATCH_SCRATCH ;
 int MAX (int ,int ) ;
 scalar_t__ XEXP (scalar_t__,int) ;
 int XINT (scalar_t__,int ) ;
 scalar_t__ XVECEXP (scalar_t__,int,int) ;
 int XVECLEN (scalar_t__,int) ;
 int max_dup_opno ;
 int max_opno ;
 int max_scratch_opno ;

__attribute__((used)) static void
max_operand_1 (rtx x)
{
  RTX_CODE code;
  int i;
  int len;
  const char *fmt;

  if (x == 0)
    return;

  code = GET_CODE (x);

  if (code == MATCH_OPERAND || code == MATCH_OPERATOR
      || code == MATCH_PARALLEL)
    max_opno = MAX (max_opno, XINT (x, 0));
  if (code == MATCH_DUP || code == MATCH_OP_DUP || code == MATCH_PAR_DUP)
    max_dup_opno = MAX (max_dup_opno, XINT (x, 0));
  if (code == MATCH_SCRATCH)
    max_scratch_opno = MAX (max_scratch_opno, XINT (x, 0));

  fmt = GET_RTX_FORMAT (code);
  len = GET_RTX_LENGTH (code);
  for (i = 0; i < len; i++)
    {
      if (fmt[i] == 'e' || fmt[i] == 'u')
 max_operand_1 (XEXP (x, i));
      else if (fmt[i] == 'E')
 {
   int j;
   for (j = 0; j < XVECLEN (x, i); j++)
     max_operand_1 (XVECEXP (x, i, j));
 }
    }
}
