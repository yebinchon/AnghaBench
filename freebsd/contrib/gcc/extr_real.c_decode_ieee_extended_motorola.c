
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct real_format {int dummy; } ;
typedef int REAL_VALUE_TYPE ;


 int decode_ieee_extended (struct real_format const*,int *,long*) ;

__attribute__((used)) static void
decode_ieee_extended_motorola (const struct real_format *fmt, REAL_VALUE_TYPE *r,
          const long *buf)
{
  long intermed[3];




  intermed[0] = buf[2];
  intermed[1] = buf[1];
  intermed[2] = (unsigned long)buf[0] >> 16;

  decode_ieee_extended (fmt, r, intermed);
}
