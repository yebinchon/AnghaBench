
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_1__ ;


struct real_format {int b; int p; int log2_b; int emin; int emax; int has_denorm; int has_signed_zero; } ;
struct TYPE_20__ {int cl; unsigned long* sig; int sign; scalar_t__ decimal; } ;
typedef TYPE_1__ REAL_VALUE_TYPE ;


 int DFmode ;
 int HOST_BITS_PER_LONG ;
 int REAL_EXP (TYPE_1__*) ;
 int SET_REAL_EXP (TYPE_1__*,int) ;
 int SIGNIFICAND_BITS ;
 int SIGSZ ;
 unsigned long SIG_MSB ;
 scalar_t__ add_significands (TYPE_1__*,TYPE_1__*,TYPE_1__*) ;
 int clear_significand_below (TYPE_1__*,int) ;
 int decimal_real_convert (TYPE_1__*,int ,TYPE_1__*) ;
 int decimal_round_for_format (struct real_format const*,TYPE_1__*) ;
 int gcc_assert (int) ;
 int gcc_unreachable () ;
 int get_inf (TYPE_1__*,int ) ;
 int get_zero (TYPE_1__*,int ) ;
 int rshift_significand (TYPE_1__*,TYPE_1__*,int) ;




 int set_significand_bit (TYPE_1__*,int) ;
 unsigned long sticky_rshift_significand (TYPE_1__*,TYPE_1__*,int) ;
 int test_significand_bit (TYPE_1__*,int) ;

__attribute__((used)) static void
round_for_format (const struct real_format *fmt, REAL_VALUE_TYPE *r)
{
  int p2, np2, i, w;
  unsigned long sticky;
  bool guard, lsb;
  int emin2m1, emax2;

  if (r->decimal)
    {
      if (fmt->b == 10)
 {
   decimal_round_for_format (fmt, r);
   return;
 }




      decimal_real_convert (r, DFmode, r);
    }

  p2 = fmt->p * fmt->log2_b;
  emin2m1 = (fmt->emin - 1) * fmt->log2_b;
  emax2 = fmt->emax * fmt->log2_b;

  np2 = SIGNIFICAND_BITS - p2;
  switch (r->cl)
    {
    underflow:
      get_zero (r, r->sign);
    case 128:
      if (!fmt->has_signed_zero)
 r->sign = 0;
      return;

    overflow:
      get_inf (r, r->sign);
    case 131:
      return;

    case 130:
      clear_significand_below (r, np2);
      return;

    case 129:
      break;

    default:
      gcc_unreachable ();
    }



  if (fmt->log2_b != 1)
    {
      int shift;

      gcc_assert (fmt->b != 10);
      shift = REAL_EXP (r) & (fmt->log2_b - 1);
      if (shift)
 {
   shift = fmt->log2_b - shift;
   r->sig[0] |= sticky_rshift_significand (r, r, shift);
   SET_REAL_EXP (r, REAL_EXP (r) + shift);
 }
    }



  if (REAL_EXP (r) > emax2)
    goto overflow;
  else if (REAL_EXP (r) <= emin2m1)
    {
      int diff;

      if (!fmt->has_denorm)
 {

   if (REAL_EXP (r) < emin2m1)
     goto underflow;
 }
      else
 {
   diff = emin2m1 - REAL_EXP (r) + 1;
   if (diff > p2)
     goto underflow;


   r->sig[0] |= sticky_rshift_significand (r, r, diff);
   SET_REAL_EXP (r, REAL_EXP (r) + diff);
 }
    }





  sticky = 0;
  for (i = 0, w = (np2 - 1) / HOST_BITS_PER_LONG; i < w; ++i)
    sticky |= r->sig[i];
  sticky |=
    r->sig[w] & (((unsigned long)1 << ((np2 - 1) % HOST_BITS_PER_LONG)) - 1);

  guard = test_significand_bit (r, np2 - 1);
  lsb = test_significand_bit (r, np2);


  if (guard && (sticky || lsb))
    {
      REAL_VALUE_TYPE u;
      get_zero (&u, 0);
      set_significand_bit (&u, np2);

      if (add_significands (r, r, &u))
 {



   SET_REAL_EXP (r, REAL_EXP (r) + 1);
   if (REAL_EXP (r) > emax2)
     goto overflow;
   r->sig[SIGSZ-1] = SIG_MSB;

   if (fmt->log2_b != 1)
     {
       int shift = REAL_EXP (r) & (fmt->log2_b - 1);
       if (shift)
  {
    shift = fmt->log2_b - shift;
    rshift_significand (r, r, shift);
    SET_REAL_EXP (r, REAL_EXP (r) + shift);
    if (REAL_EXP (r) > emax2)
      goto overflow;
  }
     }
 }
    }


  if (REAL_EXP (r) <= emin2m1)
    goto underflow;


  clear_significand_below (r, np2);
}
