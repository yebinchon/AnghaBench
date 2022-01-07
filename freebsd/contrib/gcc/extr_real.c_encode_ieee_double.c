
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct real_format {int qnan_msb_set; int has_nans; int has_inf; } ;
struct TYPE_4__ {int* sig; int sign; int cl; int canonical; int signalling; } ;
typedef TYPE_1__ REAL_VALUE_TYPE ;


 scalar_t__ FLOAT_WORDS_BIG_ENDIAN ;
 int HOST_BITS_PER_LONG ;
 int REAL_EXP (TYPE_1__ const*) ;
 int SIGSZ ;
 int SIG_MSB ;
 int gcc_unreachable () ;





__attribute__((used)) static void
encode_ieee_double (const struct real_format *fmt, long *buf,
      const REAL_VALUE_TYPE *r)
{
  unsigned long image_lo, image_hi, sig_lo, sig_hi, exp;
  bool denormal = (r->sig[SIGSZ-1] & SIG_MSB) == 0;

  image_hi = r->sign << 31;
  image_lo = 0;

  if (HOST_BITS_PER_LONG == 64)
    {
      sig_hi = r->sig[SIGSZ-1];
      sig_lo = (sig_hi >> (64 - 53)) & 0xffffffff;
      sig_hi = (sig_hi >> (64 - 53 + 1) >> 31) & 0xfffff;
    }
  else
    {
      sig_hi = r->sig[SIGSZ-1];
      sig_lo = r->sig[SIGSZ-2];
      sig_lo = (sig_hi << 21) | (sig_lo >> 11);
      sig_hi = (sig_hi >> 11) & 0xfffff;
    }

  switch (r->cl)
    {
    case 128:
      break;

    case 131:
      if (fmt->has_inf)
 image_hi |= 2047 << 20;
      else
 {
   image_hi |= 0x7fffffff;
   image_lo = 0xffffffff;
 }
      break;

    case 130:
      if (fmt->has_nans)
 {
   if (r->canonical)
     sig_hi = sig_lo = 0;
   if (r->signalling == fmt->qnan_msb_set)
     sig_hi &= ~(1 << 19);
   else
     sig_hi |= 1 << 19;




   if (r->canonical && !fmt->qnan_msb_set)
     {
       sig_hi |= (1 << 19) - 1;
       sig_lo = 0xffffffff;
     }
   else if (sig_hi == 0 && sig_lo == 0)
     sig_hi = 1 << 18;

   image_hi |= 2047 << 20;
   image_hi |= sig_hi;
   image_lo = sig_lo;
 }
      else
 {
   image_hi |= 0x7fffffff;
   image_lo = 0xffffffff;
 }
      break;

    case 129:



      if (denormal)
 exp = 0;
      else
 exp = REAL_EXP (r) + 1023 - 1;
      image_hi |= exp << 20;
      image_hi |= sig_hi;
      image_lo = sig_lo;
      break;

    default:
      gcc_unreachable ();
    }

  if (FLOAT_WORDS_BIG_ENDIAN)
    buf[0] = image_hi, buf[1] = image_lo;
  else
    buf[0] = image_lo, buf[1] = image_hi;
}
