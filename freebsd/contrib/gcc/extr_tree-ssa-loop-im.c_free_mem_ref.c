
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mem_ref {int vops; int locs; } ;


 int BITMAP_FREE (int ) ;
 int free (struct mem_ref*) ;
 int free_mem_ref_locs (int ) ;

__attribute__((used)) static void
free_mem_ref (struct mem_ref *ref)
{
  free_mem_ref_locs (ref->locs);
  BITMAP_FREE (ref->vops);
  free (ref);
}
