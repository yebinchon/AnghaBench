
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int gcc_pointer ;
struct TYPE_3__ {size_t size; int value; int align; } ;
typedef TYPE_1__ __emutls_control ;


 int COMPILE_TIME_ASSERT (int) ;
 int abort () ;
 void* emutls_memalign_alloc (size_t,size_t) ;
 int memcpy (void*,int ,size_t) ;
 int memset (void*,int ,size_t) ;

__attribute__((used)) static __inline void *emutls_allocate_object(__emutls_control *control) {

  COMPILE_TIME_ASSERT(sizeof(uintptr_t) == sizeof(gcc_pointer));
  COMPILE_TIME_ASSERT(sizeof(uintptr_t) == sizeof(void *));

  size_t size = control->size;
  size_t align = control->align;
  void *base;
  if (align < sizeof(void *))
    align = sizeof(void *);

  if ((align & (align - 1)) != 0)
    abort();

  base = emutls_memalign_alloc(align, size);
  if (control->value)
    memcpy(base, control->value, size);
  else
    memset(base, 0, size);
  return base;
}
