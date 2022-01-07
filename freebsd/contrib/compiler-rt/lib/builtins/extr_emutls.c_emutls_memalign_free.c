
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int free (void*) ;

__attribute__((used)) static __inline void emutls_memalign_free(void *base) {




  free(((void **)base)[-1]);

}
