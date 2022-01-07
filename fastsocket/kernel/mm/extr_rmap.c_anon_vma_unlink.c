
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct anon_vma_chain {int same_anon_vma; struct anon_vma* anon_vma; } ;
struct anon_vma {struct anon_vma* root; int head; } ;


 int anon_vma_free (struct anon_vma*) ;
 int anon_vma_lock (struct anon_vma*) ;
 int anon_vma_unlock (struct anon_vma*) ;
 int anonvma_external_refcount (struct anon_vma*) ;
 int drop_anon_vma (struct anon_vma*) ;
 int list_del (int *) ;
 scalar_t__ list_empty (int *) ;

__attribute__((used)) static void anon_vma_unlink(struct anon_vma_chain *anon_vma_chain)
{
 struct anon_vma *anon_vma = anon_vma_chain->anon_vma;
 int empty;


 if (!anon_vma)
  return;

 anon_vma_lock(anon_vma);
 list_del(&anon_vma_chain->same_anon_vma);


 empty = list_empty(&anon_vma->head) && !anonvma_external_refcount(anon_vma);
 anon_vma_unlock(anon_vma);

 if (empty) {

  if (anon_vma->root != anon_vma)
   drop_anon_vma(anon_vma->root);
  anon_vma_free(anon_vma);
 }
}
