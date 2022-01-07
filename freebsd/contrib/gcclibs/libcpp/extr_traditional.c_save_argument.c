
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct fun_macro {size_t argc; size_t* args; TYPE_3__* node; } ;
struct TYPE_5__ {TYPE_1__* macro; } ;
struct TYPE_6__ {TYPE_2__ value; } ;
struct TYPE_4__ {size_t paramc; } ;



__attribute__((used)) static void
save_argument (struct fun_macro *macro, size_t offset)
{
  macro->argc++;
  if (macro->argc <= macro->node->value.macro->paramc)
    macro->args[macro->argc] = offset;
}
