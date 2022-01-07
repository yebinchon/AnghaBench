
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;
typedef TYPE_2__* convert_optab ;
struct TYPE_5__ {TYPE_1__** handlers; } ;
struct TYPE_4__ {scalar_t__ libfunc; } ;


 scalar_t__ init_one_libfunc (char const*) ;

void
set_conv_libfunc (convert_optab optable, enum machine_mode tmode,
    enum machine_mode fmode, const char *name)
{
  if (name)
    optable->handlers[tmode][fmode].libfunc = init_one_libfunc (name);
  else
    optable->handlers[tmode][fmode].libfunc = 0;
}
