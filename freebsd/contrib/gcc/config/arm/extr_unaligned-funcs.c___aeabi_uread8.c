
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct u8 {long long data; } ;



long long
__aeabi_uread8 (void *ptr)
{
  return ((struct u8 *) ptr)->data;
}
