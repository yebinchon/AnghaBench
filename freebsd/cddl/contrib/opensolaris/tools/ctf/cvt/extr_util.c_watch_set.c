
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* watch_address ;
 int watch_length ;

void
watch_set(void *addr, int len)
{
 watch_address = addr;
 watch_length = len;
}
