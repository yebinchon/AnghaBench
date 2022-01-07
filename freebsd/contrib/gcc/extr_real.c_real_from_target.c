
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct real_format {int (* decode ) (struct real_format const*,int *,long const*) ;} ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;
typedef int REAL_VALUE_TYPE ;


 struct real_format* REAL_MODE_FORMAT (int) ;
 int gcc_assert (struct real_format const*) ;
 int stub1 (struct real_format const*,int *,long const*) ;

void
real_from_target (REAL_VALUE_TYPE *r, const long *buf, enum machine_mode mode)
{
  const struct real_format *fmt;

  fmt = REAL_MODE_FORMAT (mode);
  gcc_assert (fmt);

  (*fmt->decode) (fmt, r, buf);
}
