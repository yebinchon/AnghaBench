
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* calloc (int,size_t) ;
 int nomem () ;

void *
safe_malloc(size_t size)
{
 void *data;

 if ((data = calloc(1, size)) == ((void*)0))
  nomem();

 return (data);
}
