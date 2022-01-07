
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((optnone)) void
frax(void)
{
 asm volatile("mov $0x41414141, %%rax"
     : : : "rax"
 );
}
