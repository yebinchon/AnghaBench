
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int dummy; } ;
struct mm_struct {int dummy; } ;
typedef int spinlock_t ;
typedef int pte_t ;
typedef int pgprot_t ;


 int ENOMEM ;
 int * get_locked_pte (struct mm_struct*,unsigned long,int **) ;
 int pgoff_to_pte (unsigned long) ;
 int pte_none (int ) ;
 int pte_unmap_unlock (int *,int *) ;
 int set_pte_at (struct mm_struct*,unsigned long,int *,int ) ;
 int zap_pte (struct mm_struct*,struct vm_area_struct*,unsigned long,int *) ;

__attribute__((used)) static int install_file_pte(struct mm_struct *mm, struct vm_area_struct *vma,
  unsigned long addr, unsigned long pgoff, pgprot_t prot)
{
 int err = -ENOMEM;
 pte_t *pte;
 spinlock_t *ptl;

 pte = get_locked_pte(mm, addr, &ptl);
 if (!pte)
  goto out;

 if (!pte_none(*pte))
  zap_pte(mm, vma, addr, pte);

 set_pte_at(mm, addr, pte, pgoff_to_pte(pgoff));







 pte_unmap_unlock(pte, ptl);
 err = 0;
out:
 return err;
}
