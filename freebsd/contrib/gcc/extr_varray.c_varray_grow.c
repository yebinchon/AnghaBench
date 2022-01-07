
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_9__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef TYPE_2__* varray_type ;
struct varray_descriptor {size_t allocated; int copied; int resized; } ;
struct TYPE_12__ {size_t size; scalar_t__ uses_ggc; } ;
struct TYPE_10__ {int * vdt_c; } ;
struct TYPE_11__ {size_t num_elements; size_t type; TYPE_1__ data; int name; } ;


 scalar_t__ VARRAY_HDR_SIZE ;
 TYPE_9__* element ;
 TYPE_2__* ggc_realloc (TYPE_2__*,scalar_t__) ;
 int memset (int *,int ,size_t) ;
 struct varray_descriptor* varray_descriptor (int ) ;
 TYPE_2__* xrealloc (TYPE_2__*,scalar_t__) ;

varray_type
varray_grow (varray_type va, size_t n)
{
  size_t old_elements = va->num_elements;
  if (n != old_elements)
    {
      size_t elem_size = element[va->type].size;
      size_t old_data_size = old_elements * elem_size;
      size_t data_size = n * elem_size;
      if (element[va->type].uses_ggc)
 va = ggc_realloc (va, VARRAY_HDR_SIZE + data_size);
      else
 va = xrealloc (va, VARRAY_HDR_SIZE + data_size);
      va->num_elements = n;
      if (n > old_elements)
 memset (&va->data.vdt_c[old_data_size], 0, data_size - old_data_size);




    }

  return va;
}
