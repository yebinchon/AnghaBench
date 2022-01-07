
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int current_loops ;
 int linear_transform_loops (int ) ;

__attribute__((used)) static unsigned int
tree_linear_transform (void)
{
  if (!current_loops)
    return 0;

  linear_transform_loops (current_loops);
  return 0;
}
