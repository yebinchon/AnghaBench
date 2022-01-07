
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* stmt_operands_p ;
struct TYPE_3__ {int * vuse_ops; int * mustdef_ops; int * maydef_ops; int * use_ops; int * def_ops; } ;



void
free_ssa_operands (stmt_operands_p ops)
{
  ops->def_ops = ((void*)0);
  ops->use_ops = ((void*)0);
  ops->maydef_ops = ((void*)0);
  ops->mustdef_ops = ((void*)0);
  ops->vuse_ops = ((void*)0);
}
