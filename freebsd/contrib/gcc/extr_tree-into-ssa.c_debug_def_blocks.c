
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int debug_def_blocks_r ;
 int def_blocks ;
 int htab_traverse (int ,int ,int *) ;

void
debug_def_blocks (void)
{
  htab_traverse (def_blocks, debug_def_blocks_r, ((void*)0));
}
