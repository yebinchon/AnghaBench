
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_array {unsigned int elem_size; unsigned int alloc_align; } ;



__attribute__((used)) static inline void snd_array_init(struct snd_array *array, unsigned int size,
      unsigned int align)
{
 array->elem_size = size;
 array->alloc_align = align;
}
