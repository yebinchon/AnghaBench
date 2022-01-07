
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int tree ;
struct ivopts_data {int dummy; } ;
struct TYPE_3__ {int step; int base; } ;
typedef TYPE_1__ affine_iv ;


 int TREE_OPERAND (int ,int ) ;
 int find_givs_in_stmt_scev (struct ivopts_data*,int ,TYPE_1__*) ;
 int set_iv (struct ivopts_data*,int ,int ,int ) ;

__attribute__((used)) static void
find_givs_in_stmt (struct ivopts_data *data, tree stmt)
{
  affine_iv iv;

  if (!find_givs_in_stmt_scev (data, stmt, &iv))
    return;

  set_iv (data, TREE_OPERAND (stmt, 0), iv.base, iv.step);
}
