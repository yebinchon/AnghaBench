
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int gcc_obstack_init (int *) ;
 int minipool_obstack ;
 char* minipool_startobj ;
 scalar_t__ obstack_alloc (int *,int ) ;

__attribute__((used)) static void
arm_add_gc_roots (void)
{
  gcc_obstack_init(&minipool_obstack);
  minipool_startobj = (char *) obstack_alloc (&minipool_obstack, 0);
}
