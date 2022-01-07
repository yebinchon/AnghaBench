
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int htab_traverse (int ,int ,int *) ;
 int object_block_htab ;
 int output_object_block_htab ;

void
output_object_blocks (void)
{
  htab_traverse (object_block_htab, output_object_block_htab, ((void*)0));
}
