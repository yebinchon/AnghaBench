
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_array {void* list; unsigned long elem_size; } ;



__attribute__((used)) static inline unsigned int snd_array_index(struct snd_array *array, void *ptr)
{
 return (unsigned long)(ptr - array->list) / array->elem_size;
}
