
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int conversion_obstack ;
 int conversion_obstack_initialized ;
 int gcc_obstack_init (int *) ;
 int memset (void*,int ,size_t) ;
 void* obstack_alloc (int *,size_t) ;

__attribute__((used)) static void *
conversion_obstack_alloc (size_t n)
{
  void *p;
  if (!conversion_obstack_initialized)
    {
      gcc_obstack_init (&conversion_obstack);
      conversion_obstack_initialized = 1;
    }
  p = obstack_alloc (&conversion_obstack, n);
  memset (p, 0, n);
  return p;
}
