
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* ALLOC_REG_SET (int *) ;
 int NOT_A_BARRIER ;
 int reg_obstack ;
 int reg_pending_barrier ;
 void* reg_pending_clobbers ;
 void* reg_pending_sets ;
 void* reg_pending_uses ;

void
init_deps_global (void)
{
  reg_pending_sets = ALLOC_REG_SET (&reg_obstack);
  reg_pending_clobbers = ALLOC_REG_SET (&reg_obstack);
  reg_pending_uses = ALLOC_REG_SET (&reg_obstack);
  reg_pending_barrier = NOT_A_BARRIER;
}
