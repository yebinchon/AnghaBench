
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_5__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int tree ;
struct TYPE_7__ {int * prev; int next; } ;
struct TYPE_6__ {int imm_use; TYPE_5__ iter_node; } ;
typedef TYPE_1__ imm_use_iterator ;


 int NULL_TREE ;
 int USE_STMT (int ) ;
 int delink_imm_use (TYPE_5__*) ;
 scalar_t__ end_imm_use_stmt_p (TYPE_1__*) ;
 int link_use_stmts_after (int ,TYPE_1__*) ;

__attribute__((used)) static inline tree
next_imm_use_stmt (imm_use_iterator *imm)
{
  imm->imm_use = imm->iter_node.next;
  if (end_imm_use_stmt_p (imm))
    {
      if (imm->iter_node.prev != ((void*)0))
 delink_imm_use (&imm->iter_node);
      return NULL_TREE;
    }

  link_use_stmts_after (imm->imm_use, imm);
  return USE_STMT (imm->imm_use);

}
