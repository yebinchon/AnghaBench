
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct real_format {int b; } ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;
struct TYPE_8__ {scalar_t__ cl; scalar_t__ decimal; } ;
typedef TYPE_1__ REAL_VALUE_TYPE ;


 struct real_format* REAL_MODE_FORMAT (int) ;
 int decimal_real_convert (TYPE_1__*,int,TYPE_1__ const*) ;
 int gcc_assert (struct real_format const*) ;
 int normalize (TYPE_1__*) ;
 int round_for_format (struct real_format const*,TYPE_1__*) ;
 scalar_t__ rvc_normal ;

void
real_convert (REAL_VALUE_TYPE *r, enum machine_mode mode,
       const REAL_VALUE_TYPE *a)
{
  const struct real_format *fmt;

  fmt = REAL_MODE_FORMAT (mode);
  gcc_assert (fmt);

  *r = *a;

  if (a->decimal || fmt->b == 10)
    decimal_real_convert (r, mode, a);

  round_for_format (fmt, r);


  if (r->cl == rvc_normal)
    normalize (r);
}
