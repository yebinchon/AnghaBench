
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct see_entry_extra_info {int relevancy; int local_relevancy; } ;
typedef int * rtx ;
typedef enum entry_type { ____Placeholder_entry_type } entry_type ;
struct TYPE_2__ {int * pred; int * reg; struct see_entry_extra_info* extra_info; } ;


 int * DF_REF_INSN (int ) ;
 int * DF_REF_REAL_REG (int ) ;
 int DF_USES_GET (int ,unsigned int) ;
 int INSN_P (int *) ;
 int INSN_UID (int *) ;
 int NOT_RELEVANT ;
 int NULL_RTX ;
 int REGNO (int *) ;
 int REG_LIBCALL ;
 int REG_RETVAL ;
 int RELEVANT_USE ;
 int df ;
 scalar_t__ dump_file ;
 scalar_t__ find_reg_note (int *,int ,int ) ;
 int fprintf (scalar_t__,char*,...) ;
 TYPE_1__* use_entry ;
 unsigned int uses_num ;
 struct see_entry_extra_info* xmalloc (int) ;

__attribute__((used)) static void
see_update_uses_relevancy (void)
{
  rtx insn = ((void*)0);
  rtx reg = ((void*)0);
  struct see_entry_extra_info *curr_entry_extra_info;
  enum entry_type et;
  unsigned int i;

  if (!df || !use_entry)
    return;

  for (i = 0; i < uses_num; i++)
    {

      insn = DF_REF_INSN (DF_USES_GET (df, i));
      reg = DF_REF_REAL_REG (DF_USES_GET (df, i));

      et = RELEVANT_USE;

      if (insn)
 {
   if (!INSN_P (insn))
     et = NOT_RELEVANT;
   if (insn && find_reg_note (insn, REG_LIBCALL, NULL_RTX))
     et = NOT_RELEVANT;
   if (find_reg_note (insn, REG_RETVAL, NULL_RTX))
     et = NOT_RELEVANT;
 }
      else
 et = NOT_RELEVANT;

      if (dump_file)
 {
   fprintf (dump_file, "u%i insn %i reg %i ",
          i, (insn ? INSN_UID (insn) : -1), REGNO (reg));
   if (et == NOT_RELEVANT)
     fprintf (dump_file, "NOT RELEVANT \n");
   else
     fprintf (dump_file, "RELEVANT USE \n");
 }

      curr_entry_extra_info = xmalloc (sizeof (struct see_entry_extra_info));
      curr_entry_extra_info->relevancy = et;
      curr_entry_extra_info->local_relevancy = et;
      use_entry[i].extra_info = curr_entry_extra_info;
      use_entry[i].reg = ((void*)0);
      use_entry[i].pred = ((void*)0);
    }
}
