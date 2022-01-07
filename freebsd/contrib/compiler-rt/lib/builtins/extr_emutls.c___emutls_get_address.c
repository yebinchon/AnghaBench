
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {void** data; } ;
typedef TYPE_1__ emutls_address_array ;
typedef int __emutls_control ;


 void* emutls_allocate_object (int *) ;
 TYPE_1__* emutls_get_address_array (int ) ;
 uintptr_t emutls_get_index (int *) ;

void *__emutls_get_address(__emutls_control *control) {
  uintptr_t index = emutls_get_index(control);
  emutls_address_array *array = emutls_get_address_array(index--);
  if (array->data[index] == ((void*)0))
    array->data[index] = emutls_allocate_object(control);
  return array->data[index];
}
