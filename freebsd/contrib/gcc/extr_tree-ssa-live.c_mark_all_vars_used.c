
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int mark_all_vars_used_1 ;
 int walk_tree (int *,int ,int *,int *) ;

__attribute__((used)) static inline void
mark_all_vars_used (tree *expr_p)
{
  walk_tree (expr_p, mark_all_vars_used_1, ((void*)0), ((void*)0));
}
