
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* malloc (size_t) ;
 int memcpy (void*,void const*,size_t) ;

void *memdup(const void *src, size_t len)
{
 void *p;

 p = malloc(len);
 if (p)
  memcpy(p, src, len);

 return p;
}
