
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;



__attribute__((used)) static inline int boot_cpu_has(int flag)
{
 u32 eax = (flag & 0x20) ? 0x80000001 : 1;
 u32 ecx, edx;

 asm volatile("cpuid"
       : "+a" (eax), "=d" (edx), "=c" (ecx)
       : : "ebx");

 return ((flag & 0x80 ? ecx : edx) >> (flag & 31)) & 1;
}
