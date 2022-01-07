
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct real_format {int dummy; } ;
typedef int REAL_VALUE_TYPE ;


 int decode_ieee_extended_intel_96 (struct real_format const*,int *,long const*) ;

__attribute__((used)) static void
decode_ieee_extended_intel_128 (const struct real_format *fmt, REAL_VALUE_TYPE *r,
    const long *buf)
{

  decode_ieee_extended_intel_96 (fmt, r, buf);
}
