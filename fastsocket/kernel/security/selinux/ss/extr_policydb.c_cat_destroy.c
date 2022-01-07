
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int kfree (void*) ;

__attribute__((used)) static int cat_destroy(void *key, void *datum, void *p)
{
 kfree(key);
 kfree(datum);
 return 0;
}
