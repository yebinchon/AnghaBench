
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PAGE_SIZE ;
 int kfree (void*) ;
 int vfree (void*) ;

void ipc_free(void* ptr, int size)
{
 if(size > PAGE_SIZE)
  vfree(ptr);
 else
  kfree(ptr);
}
