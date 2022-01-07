
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct anon_vma {int head; int lock; } ;


 int INIT_LIST_HEAD (int *) ;
 int anonvma_external_refcount_init (struct anon_vma*) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static void anon_vma_ctor(void *data)
{
 struct anon_vma *anon_vma = data;

 spin_lock_init(&anon_vma->lock);
 anonvma_external_refcount_init(anon_vma);
 INIT_LIST_HEAD(&anon_vma->head);
}
