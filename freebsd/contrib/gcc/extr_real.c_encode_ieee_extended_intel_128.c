
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct real_format {int dummy; } ;
typedef int REAL_VALUE_TYPE ;


 int encode_ieee_extended_intel_96 (struct real_format const*,long*,int const*) ;

__attribute__((used)) static void
encode_ieee_extended_intel_128 (const struct real_format *fmt, long *buf,
    const REAL_VALUE_TYPE *r)
{

  encode_ieee_extended_intel_96 (fmt, buf, r);
  buf[3] = 0;
}
