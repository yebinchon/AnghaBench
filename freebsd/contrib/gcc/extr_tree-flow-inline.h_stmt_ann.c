
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef TYPE_4__* tree ;
typedef int stmt_ann_t ;
struct TYPE_9__ {TYPE_2__* ann; } ;
struct TYPE_10__ {TYPE_3__ common; } ;
struct TYPE_7__ {scalar_t__ type; } ;
struct TYPE_8__ {TYPE_1__ common; } ;


 scalar_t__ STMT_ANN ;
 int gcc_assert (int) ;
 int is_gimple_stmt (TYPE_4__*) ;

__attribute__((used)) static inline stmt_ann_t
stmt_ann (tree t)
{



  gcc_assert (!t->common.ann || t->common.ann->common.type == STMT_ANN);
  return (stmt_ann_t) t->common.ann;
}
