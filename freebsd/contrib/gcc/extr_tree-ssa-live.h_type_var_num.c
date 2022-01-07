
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int type_var_p ;


 int tpa_num_trees (int ) ;

__attribute__((used)) static inline int
type_var_num (type_var_p tv)
{
  return tpa_num_trees (tv);
}
