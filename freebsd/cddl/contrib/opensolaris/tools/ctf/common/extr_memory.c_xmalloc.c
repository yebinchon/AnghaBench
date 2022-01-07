
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* malloc (size_t) ;
 int memory_bailout () ;

void *
xmalloc(size_t size)
{
 void *mem;

 if ((mem = malloc(size)) == ((void*)0))
  memory_bailout();

 return (mem);
}
