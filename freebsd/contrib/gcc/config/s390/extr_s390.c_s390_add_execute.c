
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct constant_pool {int size; struct constant* execute; } ;
struct constant {struct constant* next; int label; int value; } ;
typedef int rtx ;


 scalar_t__ INSN_UID (int ) ;
 int gen_label_rtx () ;
 scalar_t__ xmalloc (int) ;

__attribute__((used)) static void
s390_add_execute (struct constant_pool *pool, rtx insn)
{
  struct constant *c;

  for (c = pool->execute; c != ((void*)0); c = c->next)
    if (INSN_UID (insn) == INSN_UID (c->value))
      break;

  if (c == ((void*)0))
    {
      c = (struct constant *) xmalloc (sizeof *c);
      c->value = insn;
      c->label = gen_label_rtx ();
      c->next = pool->execute;
      pool->execute = c;
      pool->size += 6;
    }
}
