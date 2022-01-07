
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GFP_KERNEL ;
 int atomic_add (int ,int *) ;
 int ksize (void*) ;
 void* kzalloc (size_t const,int ) ;
 int tomoyo_dynamic_memory_size ;

void *tomoyo_alloc(const size_t size)
{
 void *p = kzalloc(size, GFP_KERNEL);
 if (p)
  atomic_add(ksize(p), &tomoyo_dynamic_memory_size);
 return p;
}
