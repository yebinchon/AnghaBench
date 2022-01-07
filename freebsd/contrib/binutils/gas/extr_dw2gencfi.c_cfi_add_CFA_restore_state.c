
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct cfa_save_data {struct cfa_save_data* next; int cfa_offset; } ;
struct TYPE_4__ {TYPE_1__* frch_cfi_data; } ;
struct TYPE_3__ {struct cfa_save_data* cfa_save_stack; int cur_cfa_offset; } ;


 int DW_CFA_restore_state ;
 int _ (char*) ;
 int as_bad (int ) ;
 int cfi_add_CFA_insn (int ) ;
 TYPE_2__* frchain_now ;
 int free (struct cfa_save_data*) ;

void
cfi_add_CFA_restore_state (void)
{
  struct cfa_save_data *p;

  cfi_add_CFA_insn (DW_CFA_restore_state);

  p = frchain_now->frch_cfi_data->cfa_save_stack;
  if (p)
    {
      frchain_now->frch_cfi_data->cur_cfa_offset = p->cfa_offset;
      frchain_now->frch_cfi_data->cfa_save_stack = p->next;
      free (p);
    }
  else
    as_bad (_("CFI state restore without previous remember"));
}
