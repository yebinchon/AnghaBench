
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int root_var_p ;


 int tpa_num_trees (int ) ;

__attribute__((used)) static inline int
root_var_num (root_var_p rv)
{
  return tpa_num_trees (rv);
}
