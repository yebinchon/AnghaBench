
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int type_var_p ;


 int tpa_first_partition (int ,int) ;

__attribute__((used)) static inline int
type_var_first_partition (type_var_p tv, int i)
{
  return tpa_first_partition (tv, i);
}
