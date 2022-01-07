
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* vmalloc_user (unsigned long) ;

void *vmalloc_32_user(unsigned long size)
{




 return vmalloc_user(size);
}
