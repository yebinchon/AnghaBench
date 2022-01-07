
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct constant_pool {scalar_t__ size; int insns; void* pool_insn; void* first_insn; int label; int * execute; int ** constants; int * next; } ;


 int BITMAP_ALLOC (int *) ;
 int NR_C_MODES ;
 void* NULL_RTX ;
 int gen_label_rtx () ;
 scalar_t__ xmalloc (int) ;

__attribute__((used)) static struct constant_pool *
s390_alloc_pool (void)
{
  struct constant_pool *pool;
  int i;

  pool = (struct constant_pool *) xmalloc (sizeof *pool);
  pool->next = ((void*)0);
  for (i = 0; i < NR_C_MODES; i++)
    pool->constants[i] = ((void*)0);

  pool->execute = ((void*)0);
  pool->label = gen_label_rtx ();
  pool->first_insn = NULL_RTX;
  pool->pool_insn = NULL_RTX;
  pool->insns = BITMAP_ALLOC (((void*)0));
  pool->size = 0;

  return pool;
}
