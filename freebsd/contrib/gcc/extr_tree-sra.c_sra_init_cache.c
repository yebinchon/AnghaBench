
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* BITMAP_ALLOC (int *) ;
 void* sra_type_decomp_cache ;
 void* sra_type_inst_cache ;

void
sra_init_cache (void)
{
  if (sra_type_decomp_cache)
    return;

  sra_type_decomp_cache = BITMAP_ALLOC (((void*)0));
  sra_type_inst_cache = BITMAP_ALLOC (((void*)0));
}
