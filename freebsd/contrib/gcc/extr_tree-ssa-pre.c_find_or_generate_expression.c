
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int * tree ;
typedef int basic_block ;
struct TYPE_4__ {TYPE_1__* head; } ;
struct TYPE_3__ {int * expr; } ;


 int AVAIL_OUT (int ) ;
 TYPE_2__* VALUE_HANDLE_EXPR_SET (int *) ;
 int * bitmap_find_leader (int ,int *) ;
 int can_PRE_operation (int *) ;
 int * create_expression_by_pieces (int ,int *,int *) ;
 int gcc_assert (int ) ;

__attribute__((used)) static tree
find_or_generate_expression (basic_block block, tree expr, tree stmts)
{
  tree genop = bitmap_find_leader (AVAIL_OUT (block), expr);



  if (genop == ((void*)0))
    {
      genop = VALUE_HANDLE_EXPR_SET (expr)->head->expr;

      gcc_assert (can_PRE_operation (genop));
      genop = create_expression_by_pieces (block, genop, stmts);
    }
  return genop;
}
