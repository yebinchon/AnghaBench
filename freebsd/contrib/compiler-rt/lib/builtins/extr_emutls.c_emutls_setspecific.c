
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int emutls_address_array ;


 int emutls_pthread_key ;
 int pthread_setspecific (int ,void*) ;

__attribute__((used)) static __inline void emutls_setspecific(emutls_address_array *value) {
  pthread_setspecific(emutls_pthread_key, (void *)value);
}
