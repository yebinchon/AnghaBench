
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int anon_vma_chain; int anon_vma; } ;
struct anon_vma {int dummy; } ;


 struct anon_vma* ACCESS_ONCE (int ) ;
 scalar_t__ anon_vma_compatible (struct vm_area_struct*,struct vm_area_struct*) ;
 scalar_t__ list_is_singular (int *) ;

__attribute__((used)) static struct anon_vma *reusable_anon_vma(struct vm_area_struct *old, struct vm_area_struct *a, struct vm_area_struct *b)
{
 if (anon_vma_compatible(a, b)) {
  struct anon_vma *anon_vma = ACCESS_ONCE(old->anon_vma);

  if (anon_vma && list_is_singular(&old->anon_vma_chain))
   return anon_vma;
 }
 return ((void*)0);
}
