
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DOUBLEST ;


 int store_floating_by_length (void*,int,int ) ;

void
deprecated_store_floating (void *addr, int len, DOUBLEST val)
{
  store_floating_by_length (addr, len, val);
}
