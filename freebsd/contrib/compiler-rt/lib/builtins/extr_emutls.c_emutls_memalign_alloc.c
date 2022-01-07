
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EXTRA_ALIGN_PTR_BYTES ;
 int abort () ;
 scalar_t__ malloc (int) ;
 scalar_t__ posix_memalign (void**,size_t,size_t) ;

__attribute__((used)) static __inline void *emutls_memalign_alloc(size_t align, size_t size) {
  void *base;





  char *object;
  if ((object = (char *)malloc((align - 1 + sizeof(void *)) + size)) == ((void*)0))
    abort();
  base = (void *)(((uintptr_t)(object + (align - 1 + sizeof(void *)))) &
                  ~(uintptr_t)(align - 1));

  ((void **)base)[-1] = object;

  return base;
}
