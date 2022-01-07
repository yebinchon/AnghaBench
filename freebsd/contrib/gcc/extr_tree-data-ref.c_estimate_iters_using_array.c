
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int analyze_array_indexes (int ,int *,int ,int ,int) ;
 int loop_containing_stmt (int ) ;

void
estimate_iters_using_array (tree stmt, tree ref)
{
  analyze_array_indexes (loop_containing_stmt (stmt), ((void*)0), ref, stmt,
    1);
}
