
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static void generic_swap(void *a, void *b, int size)
{
 char t;

 do {
  t = *(char *)a;
  *(char *)a++ = *(char *)b;
  *(char *)b++ = t;
 } while (--size > 0);
}
