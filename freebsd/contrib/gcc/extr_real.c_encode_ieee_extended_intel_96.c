
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct real_format {int dummy; } ;
typedef int REAL_VALUE_TYPE ;


 scalar_t__ FLOAT_WORDS_BIG_ENDIAN ;
 int encode_ieee_extended (struct real_format const*,long*,int const*) ;

__attribute__((used)) static void
encode_ieee_extended_intel_96 (const struct real_format *fmt, long *buf,
          const REAL_VALUE_TYPE *r)
{
  if (FLOAT_WORDS_BIG_ENDIAN)
    {



      long intermed[3];
      encode_ieee_extended (fmt, intermed, r);
      buf[0] = ((intermed[2] << 16) | ((unsigned long)(intermed[1] & 0xFFFF0000) >> 16));
      buf[1] = ((intermed[1] << 16) | ((unsigned long)(intermed[0] & 0xFFFF0000) >> 16));
      buf[2] = (intermed[0] << 16);
    }
  else

    encode_ieee_extended (fmt, buf, r);
}
