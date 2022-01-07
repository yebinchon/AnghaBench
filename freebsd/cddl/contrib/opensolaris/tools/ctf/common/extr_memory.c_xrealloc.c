
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int memory_bailout () ;
 void* realloc (void*,size_t) ;

void *
xrealloc(void *ptr, size_t size)
{
 void *mem;

 if ((mem = realloc(ptr, size)) == ((void*)0))
  memory_bailout();

 return (mem);
}
