
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GFP_KERNEL ;
 size_t KMALLOC_MAX_SIZE ;
 int __GFP_NOWARN ;
 void* kzalloc (size_t,int) ;
 int pr_debug (char*,void*) ;
 void* vzalloc (size_t) ;

void *
ip_set_alloc(size_t size)
{
 void *members = ((void*)0);

 if (size < KMALLOC_MAX_SIZE)
  members = kzalloc(size, GFP_KERNEL | __GFP_NOWARN);

 if (members) {
  pr_debug("%p: allocated with kmalloc\n", members);
  return members;
 }

 members = vzalloc(size);
 if (!members)
  return ((void*)0);
 pr_debug("%p: allocated with vmalloc\n", members);

 return members;
}
