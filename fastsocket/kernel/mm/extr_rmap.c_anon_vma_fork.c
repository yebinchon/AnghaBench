
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {struct anon_vma* anon_vma; } ;
struct anon_vma_chain {int dummy; } ;
struct anon_vma {int root; } ;


 int ENOMEM ;
 struct anon_vma* anon_vma_alloc () ;
 struct anon_vma_chain* anon_vma_chain_alloc () ;
 int anon_vma_chain_link (struct vm_area_struct*,struct anon_vma_chain*,struct anon_vma*) ;
 scalar_t__ anon_vma_clone (struct vm_area_struct*,struct vm_area_struct*) ;
 int anon_vma_free (struct anon_vma*) ;
 int get_anon_vma (int ) ;
 int unlink_anon_vmas (struct vm_area_struct*) ;

int anon_vma_fork(struct vm_area_struct *vma, struct vm_area_struct *pvma)
{
 struct anon_vma_chain *avc;
 struct anon_vma *anon_vma;


 if (!pvma->anon_vma)
  return 0;





 if (anon_vma_clone(vma, pvma))
  return -ENOMEM;


 anon_vma = anon_vma_alloc();
 if (!anon_vma)
  goto out_error;
 avc = anon_vma_chain_alloc();
 if (!avc)
  goto out_error_free_anon_vma;

 anon_vma->root = pvma->anon_vma->root;





 get_anon_vma(anon_vma->root);

 vma->anon_vma = anon_vma;
 anon_vma_chain_link(vma, avc, anon_vma);

 return 0;

 out_error_free_anon_vma:
 anon_vma_free(anon_vma);
 out_error:
 unlink_anon_vmas(vma);
 return -ENOMEM;
}
