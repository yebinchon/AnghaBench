
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct def_blocks_d {int livein_blocks; int phi_blocks; int def_blocks; } ;


 int BITMAP_FREE (int ) ;
 int free (struct def_blocks_d*) ;

__attribute__((used)) static void
def_blocks_free (void *p)
{
  struct def_blocks_d *entry = (struct def_blocks_d *) p;
  BITMAP_FREE (entry->def_blocks);
  BITMAP_FREE (entry->phi_blocks);
  BITMAP_FREE (entry->livein_blocks);
  free (entry);
}
