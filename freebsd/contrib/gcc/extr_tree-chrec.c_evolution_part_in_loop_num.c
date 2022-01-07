
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int chrec_component_in_loop_num (int ,unsigned int,int) ;

tree
evolution_part_in_loop_num (tree chrec,
       unsigned loop_num)
{
  return chrec_component_in_loop_num (chrec, loop_num, 1);
}
