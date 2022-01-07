
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int emutls_address_array ;


 int emutls_pthread_key ;
 scalar_t__ pthread_getspecific (int ) ;

__attribute__((used)) static __inline emutls_address_array *emutls_getspecific() {
  return (emutls_address_array *)pthread_getspecific(emutls_pthread_key);
}
