
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_struct {scalar_t__ addr; struct vm_struct* next; int flags; } ;


 int VM_UNLIST ;
 struct vm_struct* vmlist ;
 int vmlist_lock ;
 int write_lock (int *) ;
 int write_unlock (int *) ;

__attribute__((used)) static void insert_vmalloc_vmlist(struct vm_struct *vm)
{
 struct vm_struct *tmp, **p;

 vm->flags &= ~VM_UNLIST;
 write_lock(&vmlist_lock);
 for (p = &vmlist; (tmp = *p) != ((void*)0); p = &tmp->next) {
  if (tmp->addr >= vm->addr)
   break;
 }
 vm->next = *p;
 *p = vm;
 write_unlock(&vmlist_lock);
}
