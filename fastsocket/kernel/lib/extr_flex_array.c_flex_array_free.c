
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct flex_array {int dummy; } ;


 int flex_array_free_parts (struct flex_array*) ;
 int kfree (struct flex_array*) ;

void flex_array_free(struct flex_array *fa)
{
 flex_array_free_parts(fa);
 kfree(fa);
}
