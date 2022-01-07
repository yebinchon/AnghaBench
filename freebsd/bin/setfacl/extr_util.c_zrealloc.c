
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int err (int,char*) ;
 void* realloc (void*,size_t) ;

void *
zrealloc(void *ptr, size_t size)
{
 void *newptr;

 newptr = realloc(ptr, size);
 if (newptr == ((void*)0))
  err(1, "realloc() failed");
 return (newptr);
}
