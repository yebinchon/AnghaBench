
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int use_operand_p ;
struct TYPE_7__ {scalar_t__ iter_type; int done; TYPE_3__* mustkills; TYPE_5__* mayuses; } ;
typedef TYPE_1__ ssa_op_iter ;
typedef int def_operand_p ;
struct TYPE_9__ {struct TYPE_9__* next; } ;
struct TYPE_8__ {struct TYPE_8__* next; } ;


 int MAYDEF_OP_PTR (TYPE_5__*) ;
 int MAYDEF_RESULT_PTR (TYPE_5__*) ;
 int MUSTDEF_KILL_PTR (TYPE_3__*) ;
 int MUSTDEF_RESULT_PTR (TYPE_3__*) ;
 int NULL_DEF_OPERAND_P ;
 int NULL_USE_OPERAND_P ;
 int gcc_assert (int) ;
 scalar_t__ ssa_op_iter_maymustdef ;

__attribute__((used)) static inline void
op_iter_next_maymustdef (use_operand_p *use, def_operand_p *def,
    ssa_op_iter *ptr)
{



  if (ptr->mayuses)
    {
      *def = MAYDEF_RESULT_PTR (ptr->mayuses);
      *use = MAYDEF_OP_PTR (ptr->mayuses);
      ptr->mayuses = ptr->mayuses->next;
      return;
    }

  if (ptr->mustkills)
    {
      *def = MUSTDEF_RESULT_PTR (ptr->mustkills);
      *use = MUSTDEF_KILL_PTR (ptr->mustkills);
      ptr->mustkills = ptr->mustkills->next;
      return;
    }

  *def = NULL_DEF_OPERAND_P;
  *use = NULL_USE_OPERAND_P;
  ptr->done = 1;
  return;
}
