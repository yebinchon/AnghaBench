
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct real_format {int dummy; } ;
typedef int REAL_VALUE_TYPE ;


 int encode_ieee_extended (struct real_format const*,long*,int const*) ;

__attribute__((used)) static void
encode_ieee_extended_motorola (const struct real_format *fmt, long *buf,
          const REAL_VALUE_TYPE *r)
{
  long intermed[3];
  encode_ieee_extended (fmt, intermed, r);







  buf[0] = intermed[2] << 16;
  buf[1] = intermed[1];
  buf[2] = intermed[0];
}
