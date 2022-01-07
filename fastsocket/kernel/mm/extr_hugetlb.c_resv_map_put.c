
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int dummy; } ;
struct resv_map {int refs; } ;


 int kref_put (int *,int ) ;
 int resv_map_release ;
 struct resv_map* vma_resv_map (struct vm_area_struct*) ;

__attribute__((used)) static void resv_map_put(struct vm_area_struct *vma)
{
 struct resv_map *reservations = vma_resv_map(vma);

 if (!reservations)
  return;
 kref_put(&reservations->refs, resv_map_release);
}
