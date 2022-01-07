
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct data {TYPE_1__* operand; int lineno; } ;
typedef scalar_t__ rtx ;
struct TYPE_2__ {int seen; int strict_low; char* predicate; int address_p; int eliminable; void* constraint; void* mode; int n_alternatives; } ;



 int GET_CODE (scalar_t__) ;
 void* GET_MODE (scalar_t__) ;
 char* GET_RTX_FORMAT (int) ;
 int GET_RTX_LENGTH (int) ;







 int MAX_MAX_OPERANDS ;

 scalar_t__ XEXP (scalar_t__,int) ;
 int XINT (scalar_t__,int ) ;
 void* XSTR (scalar_t__,int) ;
 int * XVEC (scalar_t__,int) ;
 scalar_t__ XVECEXP (scalar_t__,int,int) ;
 int XVECLEN (scalar_t__,int) ;
 int have_error ;
 int max_opno ;
 int message_with_line (int ,char*,...) ;
 int n_occurrences (char,void*) ;
 int num_dups ;
 void* strip_whitespace (void*) ;

__attribute__((used)) static void
scan_operands (struct data *d, rtx part, int this_address_p,
        int this_strict_low)
{
  int i, j;
  const char *format_ptr;
  int opno;

  if (part == 0)
    return;

  switch (GET_CODE (part))
    {
    case 134:
      opno = XINT (part, 0);
      if (opno > max_opno)
 max_opno = opno;
      if (max_opno >= MAX_MAX_OPERANDS)
 {
   message_with_line (d->lineno,
        "maximum number of operands exceeded");
   have_error = 1;
   return;
 }
      if (d->operand[opno].seen)
 {
   message_with_line (d->lineno,
        "repeated operand number %d\n", opno);
   have_error = 1;
 }

      d->operand[opno].seen = 1;
      d->operand[opno].mode = GET_MODE (part);
      d->operand[opno].strict_low = this_strict_low;
      d->operand[opno].predicate = XSTR (part, 1);
      d->operand[opno].constraint = strip_whitespace (XSTR (part, 2));
      d->operand[opno].n_alternatives
 = n_occurrences (',', d->operand[opno].constraint) + 1;
      d->operand[opno].address_p = this_address_p;
      d->operand[opno].eliminable = 1;
      return;

    case 129:
      opno = XINT (part, 0);
      if (opno > max_opno)
 max_opno = opno;
      if (max_opno >= MAX_MAX_OPERANDS)
 {
   message_with_line (d->lineno,
        "maximum number of operands exceeded");
   have_error = 1;
   return;
 }
      if (d->operand[opno].seen)
 {
   message_with_line (d->lineno,
        "repeated operand number %d\n", opno);
   have_error = 1;
 }

      d->operand[opno].seen = 1;
      d->operand[opno].mode = GET_MODE (part);
      d->operand[opno].strict_low = 0;
      d->operand[opno].predicate = "scratch_operand";
      d->operand[opno].constraint = strip_whitespace (XSTR (part, 1));
      d->operand[opno].n_alternatives
 = n_occurrences (',', d->operand[opno].constraint) + 1;
      d->operand[opno].address_p = 0;
      d->operand[opno].eliminable = 0;
      return;

    case 133:
    case 131:
      opno = XINT (part, 0);
      if (opno > max_opno)
 max_opno = opno;
      if (max_opno >= MAX_MAX_OPERANDS)
 {
   message_with_line (d->lineno,
        "maximum number of operands exceeded");
   have_error = 1;
   return;
 }
      if (d->operand[opno].seen)
 {
   message_with_line (d->lineno,
        "repeated operand number %d\n", opno);
   have_error = 1;
 }

      d->operand[opno].seen = 1;
      d->operand[opno].mode = GET_MODE (part);
      d->operand[opno].strict_low = 0;
      d->operand[opno].predicate = XSTR (part, 1);
      d->operand[opno].constraint = 0;
      d->operand[opno].address_p = 0;
      d->operand[opno].eliminable = 0;
      for (i = 0; i < XVECLEN (part, 2); i++)
 scan_operands (d, XVECEXP (part, 2, i), 0, 0);
      return;

    case 135:
    case 132:
    case 130:
      ++num_dups;
      break;

    case 136:
      scan_operands (d, XEXP (part, 0), 1, 0);
      return;

    case 128:
      scan_operands (d, XEXP (part, 0), 0, 1);
      return;

    default:
      break;
    }

  format_ptr = GET_RTX_FORMAT (GET_CODE (part));

  for (i = 0; i < GET_RTX_LENGTH (GET_CODE (part)); i++)
    switch (*format_ptr++)
      {
      case 'e':
      case 'u':
 scan_operands (d, XEXP (part, i), 0, 0);
 break;
      case 'E':
 if (XVEC (part, i) != ((void*)0))
   for (j = 0; j < XVECLEN (part, i); j++)
     scan_operands (d, XVECEXP (part, i, j), 0, 0);
 break;
      }
}
