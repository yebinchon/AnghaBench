
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
struct loop {int dummy; } ;
struct iv_cand {int var_before; int var_after; } ;


 scalar_t__ stmt_after_increment (struct loop*,struct iv_cand*,int ) ;

__attribute__((used)) static tree
var_at_stmt (struct loop *loop, struct iv_cand *cand, tree stmt)
{
  if (stmt_after_increment (loop, cand, stmt))
    return cand->var_after;
  else
    return cand->var_before;
}
