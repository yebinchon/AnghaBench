
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int anon_vma_chain; } ;
struct anon_vma_chain {int same_anon_vma; int same_vma; struct anon_vma* anon_vma; struct vm_area_struct* vma; } ;
struct anon_vma {int head; } ;


 int anon_vma_lock (struct anon_vma*) ;
 int anon_vma_unlock (struct anon_vma*) ;
 int list_add (int *,int *) ;
 int list_add_tail (int *,int *) ;

__attribute__((used)) static void anon_vma_chain_link(struct vm_area_struct *vma,
    struct anon_vma_chain *avc,
    struct anon_vma *anon_vma)
{
 avc->vma = vma;
 avc->anon_vma = anon_vma;
 list_add(&avc->same_vma, &vma->anon_vma_chain);

 anon_vma_lock(anon_vma);




 list_add_tail(&avc->same_anon_vma, &anon_vma->head);
 anon_vma_unlock(anon_vma);
}
