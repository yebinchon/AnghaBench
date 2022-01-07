
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cp_binding_level {scalar_t__ kind; struct cp_binding_level* level_chain; } ;


 struct cp_binding_level* current_binding_level ;
 int error (char*) ;
 scalar_t__ sk_omp ;

bool
check_omp_return (void)
{
  struct cp_binding_level *b;
  for (b = current_binding_level; b ; b = b->level_chain)
    if (b->kind == sk_omp)
      {
 error ("invalid exit from OpenMP structured block");
 return 0;
      }
  return 1;
}
