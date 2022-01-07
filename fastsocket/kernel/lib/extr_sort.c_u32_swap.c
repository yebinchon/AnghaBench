
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;



__attribute__((used)) static void u32_swap(void *a, void *b, int size)
{
 u32 t = *(u32 *)a;
 *(u32 *)a = *(u32 *)b;
 *(u32 *)b = t;
}
