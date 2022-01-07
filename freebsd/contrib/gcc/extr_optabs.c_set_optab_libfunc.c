
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_2__* optab ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;
struct TYPE_5__ {TYPE_1__* handlers; } ;
struct TYPE_4__ {scalar_t__ libfunc; } ;


 scalar_t__ init_one_libfunc (char const*) ;

void
set_optab_libfunc (optab optable, enum machine_mode mode, const char *name)
{
  if (name)
    optable->handlers[mode].libfunc = init_one_libfunc (name);
  else
    optable->handlers[mode].libfunc = 0;
}
