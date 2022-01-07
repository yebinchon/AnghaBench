
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int type_var_p ;


 int tpa_remove_partition (int ,int,int) ;

__attribute__((used)) static inline void
type_var_remove_partition (type_var_p tv, int type_index, int partition_index)
{
  tpa_remove_partition (tv, type_index, partition_index);
}
