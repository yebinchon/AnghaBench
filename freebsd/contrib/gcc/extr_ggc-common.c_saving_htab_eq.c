
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ptr_data {void const* obj; } ;



__attribute__((used)) static int
saving_htab_eq (const void *p1, const void *p2)
{
  return ((struct ptr_data *)p1)->obj == p2;
}
