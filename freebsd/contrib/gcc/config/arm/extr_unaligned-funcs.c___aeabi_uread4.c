
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct u4 {int data; } ;



int
__aeabi_uread4 (void *ptr)
{
  return ((struct u4 *) ptr)->data;
}
