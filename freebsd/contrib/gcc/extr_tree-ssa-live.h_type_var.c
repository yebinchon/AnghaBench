
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int type_var_p ;
typedef int tree ;


 int tpa_tree (int ,int) ;

__attribute__((used)) static inline tree
type_var (type_var_p tv, int i)
{
  return tpa_tree (tv, i);
}
