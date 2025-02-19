
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ iter_type; int done; TYPE_4__* maydefs; TYPE_3__* mustdefs; TYPE_5__* defs; } ;
typedef TYPE_1__ ssa_op_iter ;
typedef int def_operand_p ;
struct TYPE_9__ {struct TYPE_9__* next; } ;
struct TYPE_8__ {struct TYPE_8__* next; } ;
struct TYPE_7__ {struct TYPE_7__* next; } ;


 int DEF_OP_PTR (TYPE_5__*) ;
 int MAYDEF_RESULT_PTR (TYPE_4__*) ;
 int MUSTDEF_RESULT_PTR (TYPE_3__*) ;
 int NULL_DEF_OPERAND_P ;
 int gcc_assert (int) ;
 scalar_t__ ssa_op_iter_def ;

__attribute__((used)) static inline def_operand_p
op_iter_next_def (ssa_op_iter *ptr)
{
  def_operand_p def_p;



  if (ptr->defs)
    {
      def_p = DEF_OP_PTR (ptr->defs);
      ptr->defs = ptr->defs->next;
      return def_p;
    }
  if (ptr->mustdefs)
    {
      def_p = MUSTDEF_RESULT_PTR (ptr->mustdefs);
      ptr->mustdefs = ptr->mustdefs->next;
      return def_p;
    }
  if (ptr->maydefs)
    {
      def_p = MAYDEF_RESULT_PTR (ptr->maydefs);
      ptr->maydefs = ptr->maydefs->next;
      return def_p;
    }
  ptr->done = 1;
  return NULL_DEF_OPERAND_P;
}
