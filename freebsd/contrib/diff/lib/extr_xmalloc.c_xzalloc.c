
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* memset (int ,int ,size_t) ;
 int xmalloc (size_t) ;

void *
xzalloc (size_t s)
{
  return memset (xmalloc (s), 0, s);
}
