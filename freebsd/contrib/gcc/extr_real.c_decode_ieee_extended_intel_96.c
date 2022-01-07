
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct real_format {int dummy; } ;
typedef int REAL_VALUE_TYPE ;


 scalar_t__ FLOAT_WORDS_BIG_ENDIAN ;
 int decode_ieee_extended (struct real_format const*,int *,long const*) ;

__attribute__((used)) static void
decode_ieee_extended_intel_96 (const struct real_format *fmt, REAL_VALUE_TYPE *r,
          const long *buf)
{
  if (FLOAT_WORDS_BIG_ENDIAN)
    {



      long intermed[3];

      intermed[0] = (((unsigned long)buf[2] >> 16) | (buf[1] << 16));
      intermed[1] = (((unsigned long)buf[1] >> 16) | (buf[0] << 16));
      intermed[2] = ((unsigned long)buf[0] >> 16);

      decode_ieee_extended (fmt, r, intermed);
    }
  else

    decode_ieee_extended (fmt, r, buf);
}
