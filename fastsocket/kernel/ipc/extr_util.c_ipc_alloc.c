
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GFP_KERNEL ;
 int PAGE_SIZE ;
 void* kmalloc (int,int ) ;
 void* vmalloc (int) ;

void* ipc_alloc(int size)
{
 void* out;
 if(size > PAGE_SIZE)
  out = vmalloc(size);
 else
  out = kmalloc(size, GFP_KERNEL);
 return out;
}
