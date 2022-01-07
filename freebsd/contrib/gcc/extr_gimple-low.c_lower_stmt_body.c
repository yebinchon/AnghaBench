
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree_stmt_iterator ;
typedef int tree ;
struct lower_data {int dummy; } ;


 int lower_stmt (int *,struct lower_data*) ;
 int tsi_end_p (int ) ;
 int tsi_start (int ) ;

__attribute__((used)) static void
lower_stmt_body (tree expr, struct lower_data *data)
{
  tree_stmt_iterator tsi;

  for (tsi = tsi_start (expr); !tsi_end_p (tsi); )
    lower_stmt (&tsi, data);
}
