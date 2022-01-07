
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct real_format {int qnan_msb_set; int has_nans; int has_inf; } ;
struct TYPE_6__ {int* sig; int sign; int cl; int canonical; int signalling; } ;
typedef TYPE_1__ REAL_VALUE_TYPE ;


 scalar_t__ FLOAT_WORDS_BIG_ENDIAN ;
 int HOST_BITS_PER_LONG ;
 int REAL_EXP (TYPE_1__ const*) ;
 scalar_t__ SIGNIFICAND_BITS ;
 int SIGSZ ;
 int SIG_MSB ;
 int gcc_unreachable () ;
 int rshift_significand (TYPE_1__*,TYPE_1__ const*,scalar_t__) ;





__attribute__((used)) static void
encode_ieee_quad (const struct real_format *fmt, long *buf,
    const REAL_VALUE_TYPE *r)
{
  unsigned long image3, image2, image1, image0, exp;
  bool denormal = (r->sig[SIGSZ-1] & SIG_MSB) == 0;
  REAL_VALUE_TYPE u;

  image3 = r->sign << 31;
  image2 = 0;
  image1 = 0;
  image0 = 0;

  rshift_significand (&u, r, SIGNIFICAND_BITS - 113);

  switch (r->cl)
    {
    case 128:
      break;

    case 131:
      if (fmt->has_inf)
 image3 |= 32767 << 16;
      else
 {
   image3 |= 0x7fffffff;
   image2 = 0xffffffff;
   image1 = 0xffffffff;
   image0 = 0xffffffff;
 }
      break;

    case 130:
      if (fmt->has_nans)
 {
   image3 |= 32767 << 16;

   if (r->canonical)
     {


     }
   else if (HOST_BITS_PER_LONG == 32)
     {
       image0 = u.sig[0];
       image1 = u.sig[1];
       image2 = u.sig[2];
       image3 |= u.sig[3] & 0xffff;
     }
   else
     {
       image0 = u.sig[0];
       image1 = image0 >> 31 >> 1;
       image2 = u.sig[1];
       image3 |= (image2 >> 31 >> 1) & 0xffff;
       image0 &= 0xffffffff;
       image2 &= 0xffffffff;
     }
   if (r->signalling == fmt->qnan_msb_set)
     image3 &= ~0x8000;
   else
     image3 |= 0x8000;




   if (r->canonical && !fmt->qnan_msb_set)
     {
       image3 |= 0x7fff;
       image2 = image1 = image0 = 0xffffffff;
     }
   else if (((image3 & 0xffff) | image2 | image1 | image0) == 0)
     image3 |= 0x4000;
 }
      else
 {
   image3 |= 0x7fffffff;
   image2 = 0xffffffff;
   image1 = 0xffffffff;
   image0 = 0xffffffff;
 }
      break;

    case 129:



      if (denormal)
 exp = 0;
      else
 exp = REAL_EXP (r) + 16383 - 1;
      image3 |= exp << 16;

      if (HOST_BITS_PER_LONG == 32)
 {
   image0 = u.sig[0];
   image1 = u.sig[1];
   image2 = u.sig[2];
   image3 |= u.sig[3] & 0xffff;
 }
      else
 {
   image0 = u.sig[0];
   image1 = image0 >> 31 >> 1;
   image2 = u.sig[1];
   image3 |= (image2 >> 31 >> 1) & 0xffff;
   image0 &= 0xffffffff;
   image2 &= 0xffffffff;
 }
      break;

    default:
      gcc_unreachable ();
    }

  if (FLOAT_WORDS_BIG_ENDIAN)
    {
      buf[0] = image3;
      buf[1] = image2;
      buf[2] = image1;
      buf[3] = image0;
    }
  else
    {
      buf[0] = image0;
      buf[1] = image1;
      buf[2] = image2;
      buf[3] = image3;
    }
}
