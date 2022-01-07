
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int abort () ;
 int emutls_key_created ;
 int emutls_key_destructor ;
 int emutls_pthread_key ;
 scalar_t__ pthread_key_create (int *,int ) ;

__attribute__((used)) static __inline void emutls_init(void) {
  if (pthread_key_create(&emutls_pthread_key, emutls_key_destructor) != 0)
    abort();
  emutls_key_created = 1;
}
