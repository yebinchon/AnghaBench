
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct real_format {int (* encode ) (struct real_format const*,long*,int *) ;} ;
typedef int REAL_VALUE_TYPE ;


 int round_for_format (struct real_format const*,int *) ;
 int stub1 (struct real_format const*,long*,int *) ;

long
real_to_target_fmt (long *buf, const REAL_VALUE_TYPE *r_orig,
      const struct real_format *fmt)
{
  REAL_VALUE_TYPE r;
  long buf1;

  r = *r_orig;
  round_for_format (fmt, &r);

  if (!buf)
    buf = &buf1;
  (*fmt->encode) (fmt, buf, &r);

  return *buf;
}
