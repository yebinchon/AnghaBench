
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {uintptr_t size; } ;
typedef TYPE_1__ emutls_address_array ;


 int abort () ;
 int emutls_setspecific (TYPE_1__*) ;

__attribute__((used)) static __inline void emutls_check_array_set_size(emutls_address_array *array,
                                                 uintptr_t size) {
  if (array == ((void*)0))
    abort();
  array->size = size;
  emutls_setspecific(array);
}
