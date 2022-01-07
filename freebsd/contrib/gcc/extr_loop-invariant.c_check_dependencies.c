
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct invariant {struct def* def; } ;
struct df_ref {int flags; struct df_ref* next_ref; } ;
struct df_link {struct df_ref* ref; scalar_t__ next; } ;
struct def {int invno; } ;
typedef int rtx ;
typedef int bitmap ;
typedef int basic_block ;
struct TYPE_2__ {struct df_ref* uses; } ;


 int BLOCK_FOR_INSN (int ) ;
 int CDI_DOMINATORS ;
 TYPE_1__* DF_INSN_GET (int ,int ) ;
 int DF_REF_BB (struct df_ref*) ;
 struct df_link* DF_REF_CHAIN (struct df_ref*) ;
 struct invariant* DF_REF_DATA (struct df_ref*) ;
 int DF_REF_READ_WRITE ;
 int bitmap_set_bit (int ,int ) ;
 int df ;
 int dominated_by_p (int ,int ,int ) ;
 int gcc_assert (int ) ;

__attribute__((used)) static bool
check_dependencies (rtx insn, bitmap depends_on)
{
  struct df_link *defs;
  struct df_ref *use, *def;
  basic_block bb = BLOCK_FOR_INSN (insn), def_bb;
  struct def *def_data;
  struct invariant *inv;

  for (use = DF_INSN_GET (df, insn)->uses; use; use = use->next_ref)
    {
      if (use->flags & DF_REF_READ_WRITE)
 return 0;

      defs = DF_REF_CHAIN (use);
      if (!defs)
 continue;

      if (defs->next)
 return 0;

      def = defs->ref;
      inv = DF_REF_DATA (def);
      if (!inv)
 return 0;

      def_data = inv->def;
      gcc_assert (def_data != ((void*)0));

      def_bb = DF_REF_BB (def);



      if (!dominated_by_p (CDI_DOMINATORS, bb, def_bb))
 return 0;

      bitmap_set_bit (depends_on, def_data->invno);
    }

  return 1;
}
