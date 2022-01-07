
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int kfree (void**) ;

void array_free(void *array, int n)
{
 void **a = array;
 int i;

 for (i = 0; i < n; i++)
  kfree(a[i]);
 kfree(a);
}
