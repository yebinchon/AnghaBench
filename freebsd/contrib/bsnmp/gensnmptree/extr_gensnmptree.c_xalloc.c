
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* calloc (int,size_t) ;
 int err (int,char*,size_t) ;

__attribute__((used)) static void *
xalloc(size_t size)
{
 void *ptr;

 if ((ptr = calloc(1, size)) == ((void*)0))
  err(1, "allocing %zu bytes", size);

 return (ptr);
}
