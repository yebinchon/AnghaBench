
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int OMP_MASTER ;
 int add_stmt (int ) ;
 int build1 (int ,int ,int ) ;
 int void_type_node ;

tree
c_finish_omp_master (tree stmt)
{
  return add_stmt (build1 (OMP_MASTER, void_type_node, stmt));
}
