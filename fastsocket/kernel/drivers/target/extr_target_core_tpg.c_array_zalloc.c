
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gfp_t ;


 int array_free (void**,int) ;
 void* kzalloc (size_t,int ) ;

__attribute__((used)) static void *array_zalloc(int n, size_t size, gfp_t flags)
{
 void **a;
 int i;

 a = kzalloc(n * sizeof(void*), flags);
 if (!a)
  return ((void*)0);
 for (i = 0; i < n; i++) {
  a[i] = kzalloc(size, flags);
  if (!a[i]) {
   array_free(a, n);
   return ((void*)0);
  }
 }
 return a;
}
