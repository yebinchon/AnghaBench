
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int free (void*) ;
 int nomem () ;
 void* realloc (void*,size_t) ;

void *
safe_realloc(void *data, size_t size)
{
 void *newp;
 if ((newp = realloc(data, size)) == ((void*)0)) {
  free(data);
  nomem();
 }

 return (newp);
}
