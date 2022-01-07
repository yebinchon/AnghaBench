
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BITMAP_FREE (int ) ;
 int already_instantiated ;
 int htab_delete (int ) ;
 int scalar_evolution_info ;

void
scev_finalize (void)
{
  htab_delete (scalar_evolution_info);
  BITMAP_FREE (already_instantiated);
}
