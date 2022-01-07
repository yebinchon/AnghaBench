
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct invariant_expr_entry {scalar_t__ mode; int expr; TYPE_1__* inv; } ;
struct TYPE_2__ {int insn; } ;


 int invariant_expr_equal_p (int ,int ,int ,int ) ;

__attribute__((used)) static int
eq_invariant_expr (const void *e1, const void *e2)
{
  const struct invariant_expr_entry *entry1 = e1;
  const struct invariant_expr_entry *entry2 = e2;

  if (entry1->mode != entry2->mode)
    return 0;

  return invariant_expr_equal_p (entry1->inv->insn, entry1->expr,
     entry2->inv->insn, entry2->expr);
}
