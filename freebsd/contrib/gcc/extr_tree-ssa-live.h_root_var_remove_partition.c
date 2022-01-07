
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int root_var_p ;


 int tpa_remove_partition (int ,int,int) ;

__attribute__((used)) static inline void
root_var_remove_partition (root_var_p rv, int root_index, int partition_index)
{
  tpa_remove_partition (rv, root_index, partition_index);
}
