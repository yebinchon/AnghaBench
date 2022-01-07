
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ valueT ;
typedef scalar_t__ operatorT ;
struct TYPE_6__ {scalar_t__ X_op; scalar_t__ X_add_number; int X_unsigned; } ;
typedef TYPE_1__ expressionS ;


 scalar_t__ O_absent ;
 scalar_t__ O_big ;
 scalar_t__ O_constant ;
 scalar_t__ O_illegal ;
 scalar_t__ O_register ;
 int _ (char*) ;
 int abort () ;
 int as_bad (int ) ;
 int as_warn (int ) ;
 scalar_t__ check_eh_frame (TYPE_1__*,unsigned int*) ;
 int convert_to_bignum (TYPE_1__*) ;
 char* frag_more (int) ;
 int frag_var (int ,int ,int ,int,int ,int ,char*) ;
 int generic_bignum ;
 int make_expr_symbol (TYPE_1__*) ;
 int md_cons_align (int) ;
 int output_big_leb128 (char*,int ,scalar_t__,int) ;
 int output_leb128 (char*,scalar_t__,int) ;
 int rs_leb128 ;
 int sizeof_leb128 (scalar_t__,int) ;
 int sizeof_uleb128 (scalar_t__) ;

__attribute__((used)) static void
emit_leb128_expr (expressionS *exp, int sign)
{
  operatorT op = exp->X_op;
  unsigned int nbytes;

  if (op == O_absent || op == O_illegal)
    {
      as_warn (_("zero assumed for missing expression"));
      exp->X_add_number = 0;
      op = O_constant;
    }
  else if (op == O_big && exp->X_add_number <= 0)
    {
      as_bad (_("floating point number invalid"));
      exp->X_add_number = 0;
      op = O_constant;
    }
  else if (op == O_register)
    {
      as_warn (_("register value used as expression"));
      op = O_constant;
    }
  else if (op == O_constant
    && sign
    && (exp->X_add_number < 0) != !exp->X_unsigned)
    {



      convert_to_bignum (exp);
      op = O_big;
    }



  nbytes = (unsigned int) -1;
  if (check_eh_frame (exp, &nbytes))
    abort ();






  if (op == O_constant)
    {


      valueT value = exp->X_add_number;
      int size;
      char *p;

      size = sizeof_leb128 (value, sign);
      p = frag_more (size);
      output_leb128 (p, value, sign);
    }
  else if (op == O_big)
    {


      int size;
      char *p;

      size = output_big_leb128 (((void*)0), generic_bignum, exp->X_add_number, sign);
      p = frag_more (size);
      output_big_leb128 (p, generic_bignum, exp->X_add_number, sign);
    }
  else
    {



      frag_var (rs_leb128, sizeof_uleb128 (~(valueT) 0), 0, sign,
  make_expr_symbol (exp), 0, (char *) ((void*)0));
    }
}
