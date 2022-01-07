
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct constant_pool {int label; struct constant* execute; } ;
struct constant {int label; int value; struct constant* next; } ;
typedef int rtx ;


 scalar_t__ INSN_UID (int ) ;
 int Pmode ;
 int gcc_assert (struct constant*) ;
 int gen_rtx_CONST (int ,int ) ;
 int gen_rtx_LABEL_REF (int ,int ) ;
 int gen_rtx_MINUS (int ,int ,int ) ;

__attribute__((used)) static rtx
s390_find_execute (struct constant_pool *pool, rtx insn)
{
  struct constant *c;
  rtx offset;

  for (c = pool->execute; c != ((void*)0); c = c->next)
    if (INSN_UID (insn) == INSN_UID (c->value))
      break;

  gcc_assert (c);

  offset = gen_rtx_MINUS (Pmode, gen_rtx_LABEL_REF (Pmode, c->label),
     gen_rtx_LABEL_REF (Pmode, pool->label));
  offset = gen_rtx_CONST (Pmode, offset);
  return offset;
}
