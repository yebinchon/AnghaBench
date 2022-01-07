
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct real_format {int b; int emax; int log2_b; int p; int pnan; } ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;
struct TYPE_8__ {int sign; struct TYPE_8__* sig; int cl; } ;
typedef TYPE_1__ REAL_VALUE_TYPE ;


 struct real_format* REAL_MODE_FORMAT (int) ;
 int SET_REAL_EXP (TYPE_1__*,int) ;
 int SIGNIFICAND_BITS ;
 int SIGSZ ;
 int clear_significand_below (TYPE_1__*,int) ;
 int clear_significand_bit (TYPE_1__*,int) ;
 int decimal_real_maxval (TYPE_1__*,int,int) ;
 int gcc_assert (struct real_format const*) ;
 int memset (TYPE_1__*,int,int) ;
 int rvc_normal ;

void
real_maxval (REAL_VALUE_TYPE *r, int sign, enum machine_mode mode)
{
  const struct real_format *fmt;
  int np2;

  fmt = REAL_MODE_FORMAT (mode);
  gcc_assert (fmt);
  memset (r, 0, sizeof (*r));

  if (fmt->b == 10)
    decimal_real_maxval (r, sign, mode);
  else
    {
      r->cl = rvc_normal;
      r->sign = sign;
      SET_REAL_EXP (r, fmt->emax * fmt->log2_b);

      np2 = SIGNIFICAND_BITS - fmt->p * fmt->log2_b;
      memset (r->sig, -1, SIGSZ * sizeof (unsigned long));
      clear_significand_below (r, np2);

      if (fmt->pnan < fmt->p)






        clear_significand_bit (r, SIGNIFICAND_BITS - fmt->pnan);
    }
}
