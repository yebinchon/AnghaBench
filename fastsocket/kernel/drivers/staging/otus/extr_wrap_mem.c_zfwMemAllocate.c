
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zdev_t ;
typedef int u32_t ;


 int GFP_ATOMIC ;
 void* kmalloc (int ,int ) ;

void* zfwMemAllocate(zdev_t* dev, u32_t size)
{
    void* mem = ((void*)0);
    mem = kmalloc(size, GFP_ATOMIC);
    return mem;
}
