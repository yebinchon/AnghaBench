
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int output_constant_pool_contents (int ) ;
 int shared_constant_pool ;

void
output_shared_constant_pool (void)
{
  output_constant_pool_contents (shared_constant_pool);
}
