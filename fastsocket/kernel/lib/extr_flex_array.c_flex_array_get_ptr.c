
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct flex_array {int dummy; } ;


 void** flex_array_get (struct flex_array*,unsigned int) ;

void *flex_array_get_ptr(struct flex_array *fa, unsigned int element_nr)
{
 void **tmp;

 tmp = flex_array_get(fa, element_nr);
 if (!tmp)
  return ((void*)0);

 return *tmp;
}
