
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int bzero (void*,size_t) ;
 void* xmalloc (size_t) ;

void *
xcalloc(size_t size)
{
 void *mem;

 mem = xmalloc(size);
 bzero(mem, size);

 return (mem);
}
