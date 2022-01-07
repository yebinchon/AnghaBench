
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int dummy; } ;
struct resv_map {int refs; } ;


 int kref_get (int *) ;
 struct resv_map* vma_resv_map (struct vm_area_struct*) ;

__attribute__((used)) static void hugetlb_vm_op_open(struct vm_area_struct *vma)
{
 struct resv_map *reservations = vma_resv_map(vma);
 if (reservations)
  kref_get(&reservations->refs);
}
