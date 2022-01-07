
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* calloc (int,size_t) ;
 int err (int,char*) ;

void *
zmalloc(size_t size)
{
 void *ptr;

 ptr = calloc(1, size);
 if (ptr == ((void*)0))
  err(1, "calloc() failed");
 return (ptr);
}
