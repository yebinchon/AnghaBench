
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct real_format {int (* decode ) (struct real_format const*,int *,long const*) ;} ;
typedef int REAL_VALUE_TYPE ;


 int stub1 (struct real_format const*,int *,long const*) ;

void
real_from_target_fmt (REAL_VALUE_TYPE *r, const long *buf,
        const struct real_format *fmt)
{
  (*fmt->decode) (fmt, r, buf);
}
