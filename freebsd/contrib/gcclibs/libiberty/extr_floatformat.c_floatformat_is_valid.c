
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct floatformat {int (* is_valid ) (struct floatformat const*,void const*) ;} ;


 int stub1 (struct floatformat const*,void const*) ;

int
floatformat_is_valid (const struct floatformat *fmt, const void *from)
{
  return fmt->is_valid (fmt, from);
}
