
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct invariant {int dummy; } ;
struct df_ref {int flags; int insn; } ;
struct df_link {struct df_ref* ref; scalar_t__ next; } ;
typedef int basic_block ;


 int BLOCK_FOR_INSN (int ) ;
 int CDI_DOMINATORS ;
 int DF_REF_BB (struct df_ref*) ;
 struct df_link* DF_REF_CHAIN (struct df_ref*) ;
 struct invariant* DF_REF_DATA (struct df_ref*) ;
 int DF_REF_READ_WRITE ;
 int dominated_by_p (int ,int ,int ) ;

__attribute__((used)) static struct invariant *
invariant_for_use (struct df_ref *use)
{
  struct df_link *defs;
  struct df_ref *def;
  basic_block bb = BLOCK_FOR_INSN (use->insn), def_bb;

  if (use->flags & DF_REF_READ_WRITE)
    return ((void*)0);

  defs = DF_REF_CHAIN (use);
  if (!defs || defs->next)
    return ((void*)0);
  def = defs->ref;
  if (!DF_REF_DATA (def))
    return ((void*)0);

  def_bb = DF_REF_BB (def);
  if (!dominated_by_p (CDI_DOMINATORS, bb, def_bb))
    return ((void*)0);
  return DF_REF_DATA (def);
}
