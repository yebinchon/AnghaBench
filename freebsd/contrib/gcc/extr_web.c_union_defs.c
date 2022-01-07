
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct web_entry {int dummy; } ;
struct df_ref {int flags; struct df_ref* next_ref; } ;
struct df_link {struct df_link* next; struct df_ref* ref; } ;
struct df {int dummy; } ;
typedef int * rtx ;


 struct df_ref* DF_INSN_DEFS (struct df*,int *) ;
 struct df_ref* DF_INSN_USES (struct df*,int *) ;
 struct df_link* DF_REF_CHAIN (struct df_ref*) ;
 int DF_REF_ID (struct df_ref*) ;
 int * DF_REF_INSN (struct df_ref*) ;
 int DF_REF_READ_WRITE ;
 scalar_t__ DF_REF_REAL_REG (struct df_ref*) ;
 scalar_t__ DF_REF_REG (struct df_ref*) ;
 scalar_t__ SET_DEST (int *) ;
 scalar_t__ SET_SRC (int *) ;
 int * single_set (int *) ;
 int stub1 (struct web_entry*,struct web_entry*) ;
 int stub2 (struct web_entry*,struct web_entry*) ;
 int stub3 (struct web_entry*,struct web_entry*) ;
 int stub4 (struct web_entry*,struct web_entry*) ;

void
union_defs (struct df *df, struct df_ref *use, struct web_entry *def_entry,
      struct web_entry *use_entry,
      bool (*fun) (struct web_entry *, struct web_entry *))
{
  rtx insn = DF_REF_INSN (use);
  struct df_link *link = DF_REF_CHAIN (use);
  struct df_ref *use_link;
  struct df_ref *def_link;
  rtx set;

  if (insn)
    {
      use_link = DF_INSN_USES (df, insn);
      def_link = DF_INSN_DEFS (df, insn);
      set = single_set (insn);
    }
  else
    {
      use_link = ((void*)0);
      def_link = ((void*)0);
      set = ((void*)0);
    }






  while (use_link)
    {
      if (use != use_link
   && DF_REF_REAL_REG (use) == DF_REF_REAL_REG (use_link))
  (*fun) (use_entry + DF_REF_ID (use),
   use_entry + DF_REF_ID (use_link));
      use_link = use_link->next_ref;
    }





  if (set
      && SET_SRC (set) == DF_REF_REG (use)
      && SET_SRC (set) == SET_DEST (set))
    {
      while (def_link)
 {
   if (DF_REF_REAL_REG (use) == DF_REF_REAL_REG (def_link))
      (*fun) (use_entry + DF_REF_ID (use),
       def_entry + DF_REF_ID (def_link));
   def_link = def_link->next_ref;
 }
    }
  while (link)
    {
      (*fun) (use_entry + DF_REF_ID (use),
       def_entry + DF_REF_ID (link->ref));
      link = link->next;
    }



  if (use->flags & DF_REF_READ_WRITE)
    {
      struct df_ref *link;

      if (DF_REF_INSN (use))
 link = DF_INSN_DEFS (df, DF_REF_INSN (use));
      else
 link = ((void*)0);

      while (link)
 {
   if (DF_REF_REAL_REG (link) == DF_REF_REAL_REG (use))
      (*fun) (use_entry + DF_REF_ID (use),
       def_entry + DF_REF_ID (link));
   link = link->next_ref;
 }
    }
}
