
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_array {int * list; scalar_t__ alloced; scalar_t__ used; } ;


 int kfree (int *) ;

void snd_array_free(struct snd_array *array)
{
 kfree(array->list);
 array->used = 0;
 array->alloced = 0;
 array->list = ((void*)0);
}
