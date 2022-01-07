
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int tree ;
typedef TYPE_3__* optab ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;
struct TYPE_6__ {int (* type_for_mode ) (int,int) ;} ;
struct TYPE_9__ {TYPE_1__ types; } ;
struct TYPE_8__ {TYPE_2__* handlers; } ;
struct TYPE_7__ {scalar_t__ insn_code; } ;


 scalar_t__ CODE_FOR_nothing ;
 int GET_MODE_INNER (int) ;
 int GET_MODE_NUNITS (int) ;
 int GET_MODE_WIDER_MODE (int) ;
 int MIN_MODE_VECTOR_FLOAT ;
 int MIN_MODE_VECTOR_INT ;
 int NULL_TREE ;
 scalar_t__ SCALAR_FLOAT_MODE_P (int) ;
 int VOIDmode ;
 TYPE_5__ lang_hooks ;
 int stub1 (int,int) ;

__attribute__((used)) static tree
type_for_widest_vector_mode (enum machine_mode inner_mode, optab op)
{
  enum machine_mode best_mode = VOIDmode, mode;
  int best_nunits = 0;

  if (SCALAR_FLOAT_MODE_P (inner_mode))
    mode = MIN_MODE_VECTOR_FLOAT;
  else
    mode = MIN_MODE_VECTOR_INT;

  for (; mode != VOIDmode; mode = GET_MODE_WIDER_MODE (mode))
    if (GET_MODE_INNER (mode) == inner_mode
        && GET_MODE_NUNITS (mode) > best_nunits
 && op->handlers[mode].insn_code != CODE_FOR_nothing)
      best_mode = mode, best_nunits = GET_MODE_NUNITS (mode);

  if (best_mode == VOIDmode)
    return NULL_TREE;
  else
    return lang_hooks.types.type_for_mode (best_mode, 1);
}
