
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct real_format {int qnan_msb_set; int has_nans; int has_inf; } ;
struct TYPE_4__ {unsigned long sign; int* sig; int cl; int canonical; int signalling; } ;
typedef TYPE_1__ REAL_VALUE_TYPE ;


 int HOST_BITS_PER_LONG ;
 int REAL_EXP (TYPE_1__ const*) ;
 int SIGSZ ;
 int SIG_MSB ;
 int gcc_unreachable () ;





__attribute__((used)) static void
encode_ieee_single (const struct real_format *fmt, long *buf,
      const REAL_VALUE_TYPE *r)
{
  unsigned long image, sig, exp;
  unsigned long sign = r->sign;
  bool denormal = (r->sig[SIGSZ-1] & SIG_MSB) == 0;

  image = sign << 31;
  sig = (r->sig[SIGSZ-1] >> (HOST_BITS_PER_LONG - 24)) & 0x7fffff;

  switch (r->cl)
    {
    case 128:
      break;

    case 131:
      if (fmt->has_inf)
 image |= 255 << 23;
      else
 image |= 0x7fffffff;
      break;

    case 130:
      if (fmt->has_nans)
 {
   if (r->canonical)
     sig = 0;
   if (r->signalling == fmt->qnan_msb_set)
     sig &= ~(1 << 22);
   else
     sig |= 1 << 22;




   if (r->canonical && !fmt->qnan_msb_set)
     sig |= (1 << 22) - 1;
   else if (sig == 0)
     sig = 1 << 21;

   image |= 255 << 23;
   image |= sig;
 }
      else
 image |= 0x7fffffff;
      break;

    case 129:



      if (denormal)
 exp = 0;
      else
      exp = REAL_EXP (r) + 127 - 1;
      image |= exp << 23;
      image |= sig;
      break;

    default:
      gcc_unreachable ();
    }

  buf[0] = image;
}
