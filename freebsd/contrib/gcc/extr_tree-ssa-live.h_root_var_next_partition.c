
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int root_var_p ;


 int tpa_next_partition (int ,int) ;

__attribute__((used)) static inline int
root_var_next_partition (root_var_p rv, int i)
{
  return tpa_next_partition (rv, i);
}
