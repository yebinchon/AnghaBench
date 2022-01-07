
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_6__ ;
typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int use_operand_p ;
struct TYPE_7__ {scalar_t__ iter_type; scalar_t__ phi_i; scalar_t__ num_phi; int done; int phi_stmt; TYPE_5__* mustkills; TYPE_6__* mayuses; TYPE_3__* vuses; TYPE_4__* uses; } ;
typedef TYPE_1__ ssa_op_iter ;
struct TYPE_11__ {struct TYPE_11__* next; } ;
struct TYPE_10__ {struct TYPE_10__* next; } ;
struct TYPE_9__ {struct TYPE_9__* next; } ;
struct TYPE_8__ {struct TYPE_8__* next; } ;


 int MAYDEF_OP_PTR (TYPE_6__*) ;
 int MUSTDEF_KILL_PTR (TYPE_5__*) ;
 int NULL_USE_OPERAND_P ;
 int PHI_ARG_DEF_PTR (int ,int ) ;
 int USE_OP_PTR (TYPE_4__*) ;
 int VUSE_OP_PTR (TYPE_3__*) ;
 int gcc_assert (int) ;
 scalar_t__ ssa_op_iter_use ;

__attribute__((used)) static inline use_operand_p
op_iter_next_use (ssa_op_iter *ptr)
{
  use_operand_p use_p;



  if (ptr->uses)
    {
      use_p = USE_OP_PTR (ptr->uses);
      ptr->uses = ptr->uses->next;
      return use_p;
    }
  if (ptr->vuses)
    {
      use_p = VUSE_OP_PTR (ptr->vuses);
      ptr->vuses = ptr->vuses->next;
      return use_p;
    }
  if (ptr->mayuses)
    {
      use_p = MAYDEF_OP_PTR (ptr->mayuses);
      ptr->mayuses = ptr->mayuses->next;
      return use_p;
    }
  if (ptr->mustkills)
    {
      use_p = MUSTDEF_KILL_PTR (ptr->mustkills);
      ptr->mustkills = ptr->mustkills->next;
      return use_p;
    }
  if (ptr->phi_i < ptr->num_phi)
    {
      return PHI_ARG_DEF_PTR (ptr->phi_stmt, (ptr->phi_i)++);
    }
  ptr->done = 1;
  return NULL_USE_OPERAND_P;
}
