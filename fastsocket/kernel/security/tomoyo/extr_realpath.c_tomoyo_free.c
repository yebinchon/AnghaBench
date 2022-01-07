
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int atomic_sub (int ,int *) ;
 int kfree (void const*) ;
 int ksize (void const*) ;
 int tomoyo_dynamic_memory_size ;

void tomoyo_free(const void *p)
{
 if (p) {
  atomic_sub(ksize(p), &tomoyo_dynamic_memory_size);
  kfree(p);
 }
}
