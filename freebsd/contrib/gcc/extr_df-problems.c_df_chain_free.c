
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dataflow {int block_pool; } ;


 int free (struct dataflow*) ;
 int free_alloc_pool (int ) ;

__attribute__((used)) static void
df_chain_free (struct dataflow *dflow)
{
  free_alloc_pool (dflow->block_pool);
  free (dflow);
}
