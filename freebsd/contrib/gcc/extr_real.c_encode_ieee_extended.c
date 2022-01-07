
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct real_format {int qnan_msb_set; int has_nans; int has_inf; } ;
struct TYPE_4__ {int* sig; int sign; int cl; int signalling; } ;
typedef TYPE_1__ REAL_VALUE_TYPE ;


 int HOST_BITS_PER_LONG ;
 int REAL_EXP (TYPE_1__ const*) ;
 int SIGSZ ;
 int SIG_MSB ;
 int gcc_assert (int) ;
 int gcc_unreachable () ;





__attribute__((used)) static void
encode_ieee_extended (const struct real_format *fmt, long *buf,
        const REAL_VALUE_TYPE *r)
{
  unsigned long image_hi, sig_hi, sig_lo;
  bool denormal = (r->sig[SIGSZ-1] & SIG_MSB) == 0;

  image_hi = r->sign << 15;
  sig_hi = sig_lo = 0;

  switch (r->cl)
    {
    case 128:
      break;

    case 131:
      if (fmt->has_inf)
 {
   image_hi |= 32767;




   sig_hi = 0x80000000;
 }
      else
 {
   image_hi |= 32767;
   sig_lo = sig_hi = 0xffffffff;
 }
      break;

    case 130:
      if (fmt->has_nans)
 {
   image_hi |= 32767;
   if (HOST_BITS_PER_LONG == 32)
     {
       sig_hi = r->sig[SIGSZ-1];
       sig_lo = r->sig[SIGSZ-2];
     }
   else
     {
       sig_lo = r->sig[SIGSZ-1];
       sig_hi = sig_lo >> 31 >> 1;
       sig_lo &= 0xffffffff;
     }
   if (r->signalling == fmt->qnan_msb_set)
     sig_hi &= ~(1 << 30);
   else
     sig_hi |= 1 << 30;
   if ((sig_hi & 0x7fffffff) == 0 && sig_lo == 0)
     sig_hi = 1 << 29;




   sig_hi |= 0x80000000;
 }
      else
 {
   image_hi |= 32767;
   sig_lo = sig_hi = 0xffffffff;
 }
      break;

    case 129:
      {
 int exp = REAL_EXP (r);
 if (denormal)
   exp = 0;
 else
   {
     exp += 16383 - 1;
     gcc_assert (exp >= 0);
   }
 image_hi |= exp;

 if (HOST_BITS_PER_LONG == 32)
   {
     sig_hi = r->sig[SIGSZ-1];
     sig_lo = r->sig[SIGSZ-2];
   }
 else
   {
     sig_lo = r->sig[SIGSZ-1];
     sig_hi = sig_lo >> 31 >> 1;
     sig_lo &= 0xffffffff;
   }
      }
      break;

    default:
      gcc_unreachable ();
    }

  buf[0] = sig_lo, buf[1] = sig_hi, buf[2] = image_hi;
}
