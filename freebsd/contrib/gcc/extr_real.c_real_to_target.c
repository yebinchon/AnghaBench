
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct real_format {int dummy; } ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;
typedef int REAL_VALUE_TYPE ;


 struct real_format* REAL_MODE_FORMAT (int) ;
 int gcc_assert (struct real_format const*) ;
 long real_to_target_fmt (long*,int const*,struct real_format const*) ;

long
real_to_target (long *buf, const REAL_VALUE_TYPE *r, enum machine_mode mode)
{
  const struct real_format *fmt;

  fmt = REAL_MODE_FORMAT (mode);
  gcc_assert (fmt);

  return real_to_target_fmt (buf, r, fmt);
}
