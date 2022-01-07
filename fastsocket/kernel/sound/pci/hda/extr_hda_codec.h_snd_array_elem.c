
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_array {void* list; unsigned int elem_size; } ;



__attribute__((used)) static inline void *snd_array_elem(struct snd_array *array, unsigned int idx)
{
 return array->list + idx * array->elem_size;
}
