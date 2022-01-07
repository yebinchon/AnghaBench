
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct web_entry {int * reg; } ;
typedef int * rtx ;
typedef enum rtx_code { ____Placeholder_rtx_code } rtx_code ;
struct TYPE_2__ {scalar_t__ relevancy; int source_mode; } ;


 int * DF_REF_INSN (int ) ;
 int * DF_REF_REAL_REG (int ) ;
 int DF_USES_GET (int ,unsigned int) ;
 TYPE_1__* ENTRY_EI (struct web_entry*) ;
 int INSN_P (int *) ;
 int SIGN_EXTEND ;
 scalar_t__ SIGN_EXTENDED_DEF ;
 int USE_EXTENSION ;
 int ZERO_EXTEND ;
 scalar_t__ ZERO_EXTENDED_DEF ;
 int df ;
 int gcc_assert (int ) ;
 int rtx_equal_p (int *,int *) ;
 int * see_gen_normalized_extension (int *,int,int ) ;
 int see_store_reference_and_extension (int *,int *,int ) ;
 struct web_entry* unionfind_root (int *) ;
 int * use_entry ;
 unsigned int uses_num ;

__attribute__((used)) static int
see_handle_relevant_uses (void)
{
  rtx insn = ((void*)0);
  rtx reg = ((void*)0);
  struct web_entry *root_entry = ((void*)0);
  rtx se_insn = ((void*)0);
  unsigned int i;
  int num_relevant_uses = 0;
  enum rtx_code extension_code;

  for (i = 0; i < uses_num; i++)
    {
      insn = DF_REF_INSN (DF_USES_GET (df, i));
      reg = DF_REF_REAL_REG (DF_USES_GET (df, i));

      if (!insn)
 continue;

      if (!INSN_P (insn))
 continue;

      root_entry = unionfind_root (&use_entry[i]);

      if (ENTRY_EI (root_entry)->relevancy != SIGN_EXTENDED_DEF
   && ENTRY_EI (root_entry)->relevancy != ZERO_EXTENDED_DEF)

 continue;

      if (root_entry->reg)


 gcc_assert (rtx_equal_p (root_entry->reg, reg));
      else
 root_entry->reg = reg;


      if (ENTRY_EI (root_entry)->relevancy == SIGN_EXTENDED_DEF)
 extension_code = SIGN_EXTEND;
      else
 extension_code = ZERO_EXTEND;

      se_insn =
 see_gen_normalized_extension (reg, extension_code,
          ENTRY_EI (root_entry)->source_mode);
      if (!se_insn)

 return -1;

      num_relevant_uses++;

      if (!see_store_reference_and_extension (insn, se_insn,
                 USE_EXTENSION))

 return -1;
    }

  return num_relevant_uses;
}
