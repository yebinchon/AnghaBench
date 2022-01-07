
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ skip_destructor_rounds; } ;
typedef TYPE_1__ emutls_address_array ;


 int emutls_setspecific (TYPE_1__*) ;
 int emutls_shutdown (TYPE_1__*) ;
 int free (void*) ;

__attribute__((used)) static void emutls_key_destructor(void *ptr) {
  emutls_address_array *array = (emutls_address_array *)ptr;
  if (array->skip_destructor_rounds > 0) {






    array->skip_destructor_rounds--;
    emutls_setspecific(array);
  } else {
    emutls_shutdown(array);
    free(ptr);
  }
}
