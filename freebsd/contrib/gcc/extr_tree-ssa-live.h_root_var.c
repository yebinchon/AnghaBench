
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef int root_var_p ;


 int tpa_tree (int ,int) ;

__attribute__((used)) static inline tree
root_var (root_var_p rv, int i)
{
  return tpa_tree (rv, i);
}
