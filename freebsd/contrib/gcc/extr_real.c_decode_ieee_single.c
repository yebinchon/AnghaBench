
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct real_format {unsigned long qnan_msb_set; scalar_t__ has_inf; scalar_t__ has_nans; scalar_t__ has_signed_zero; scalar_t__ has_denorm; } ;
struct TYPE_6__ {int sign; unsigned long* sig; unsigned long signalling; void* cl; } ;
typedef TYPE_1__ REAL_VALUE_TYPE ;


 int HOST_BITS_PER_LONG ;
 int SET_REAL_EXP (TYPE_1__*,int) ;
 int SIGSZ ;
 unsigned long SIG_MSB ;
 int memset (TYPE_1__*,int ,int) ;
 int normalize (TYPE_1__*) ;
 void* rvc_inf ;
 void* rvc_nan ;
 void* rvc_normal ;

__attribute__((used)) static void
decode_ieee_single (const struct real_format *fmt, REAL_VALUE_TYPE *r,
      const long *buf)
{
  unsigned long image = buf[0] & 0xffffffff;
  bool sign = (image >> 31) & 1;
  int exp = (image >> 23) & 0xff;

  memset (r, 0, sizeof (*r));
  image <<= HOST_BITS_PER_LONG - 24;
  image &= ~SIG_MSB;

  if (exp == 0)
    {
      if (image && fmt->has_denorm)
 {
   r->cl = rvc_normal;
   r->sign = sign;
   SET_REAL_EXP (r, -126);
   r->sig[SIGSZ-1] = image << 1;
   normalize (r);
 }
      else if (fmt->has_signed_zero)
 r->sign = sign;
    }
  else if (exp == 255 && (fmt->has_nans || fmt->has_inf))
    {
      if (image)
 {
   r->cl = rvc_nan;
   r->sign = sign;
   r->signalling = (((image >> (HOST_BITS_PER_LONG - 2)) & 1)
      ^ fmt->qnan_msb_set);
   r->sig[SIGSZ-1] = image;
 }
      else
 {
   r->cl = rvc_inf;
   r->sign = sign;
 }
    }
  else
    {
      r->cl = rvc_normal;
      r->sign = sign;
      SET_REAL_EXP (r, exp - 127 + 1);
      r->sig[SIGSZ-1] = image | SIG_MSB;
    }
}
