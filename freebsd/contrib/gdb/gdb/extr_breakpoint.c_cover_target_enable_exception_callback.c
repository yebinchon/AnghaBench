
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct symtab_and_line {int dummy; } ;
struct TYPE_2__ {int enable_p; int kind; } ;
typedef TYPE_1__ args_for_catchpoint_enable ;


 struct symtab_and_line* target_enable_exception_callback (int ,int ) ;

__attribute__((used)) static int
cover_target_enable_exception_callback (void *arg)
{
  args_for_catchpoint_enable *args = arg;
  struct symtab_and_line *sal;
  sal = target_enable_exception_callback (args->kind, args->enable_p);
  if (sal == ((void*)0))
    return 0;
  else if (sal == (struct symtab_and_line *) -1)
    return -1;
  else
    return 1;
}
