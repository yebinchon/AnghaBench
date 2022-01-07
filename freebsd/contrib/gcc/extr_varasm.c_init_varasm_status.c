
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct varasm_status {scalar_t__ deferred_constants; int pool; } ;
struct function {struct varasm_status* varasm; } ;


 int create_constant_pool () ;
 struct varasm_status* ggc_alloc (int) ;

void
init_varasm_status (struct function *f)
{
  struct varasm_status *p;

  p = ggc_alloc (sizeof (struct varasm_status));
  f->varasm = p;

  p->pool = create_constant_pool ();
  p->deferred_constants = 0;
}
