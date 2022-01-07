
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct constant_pool {int insns; struct constant_pool* next; struct constant_pool* execute; struct constant_pool** constants; } ;
struct constant {int insns; struct constant* next; struct constant* execute; struct constant** constants; } ;


 int BITMAP_FREE (int ) ;
 int NR_C_MODES ;
 int free (struct constant_pool*) ;

__attribute__((used)) static void
s390_free_pool (struct constant_pool *pool)
{
  struct constant *c, *next;
  int i;

  for (i = 0; i < NR_C_MODES; i++)
    for (c = pool->constants[i]; c; c = next)
      {
 next = c->next;
 free (c);
      }

  for (c = pool->execute; c; c = next)
    {
      next = c->next;
      free (c);
    }

  BITMAP_FREE (pool->insns);
  free (pool);
}
