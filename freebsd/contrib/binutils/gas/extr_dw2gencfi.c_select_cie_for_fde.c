
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {int X_op; scalar_t__ X_add_number; int X_add_symbol; int X_unsigned; } ;
struct fde_entry {scalar_t__ return_column; scalar_t__ signal_frame; scalar_t__ per_encoding; scalar_t__ lsda_encoding; struct cfi_insn_data* data; TYPE_4__ personality; } ;
struct cie_entry {scalar_t__ return_column; scalar_t__ signal_frame; scalar_t__ per_encoding; scalar_t__ lsda_encoding; struct cfi_insn_data* last; struct cfi_insn_data* first; TYPE_4__ personality; struct cie_entry* next; } ;
struct TYPE_6__ {int reg2; int reg1; } ;
struct TYPE_5__ {int offset; int reg; } ;
struct TYPE_7__ {int i; int r; TYPE_2__ rr; TYPE_1__ ri; } ;
struct cfi_insn_data {int insn; struct cfi_insn_data* next; TYPE_3__ u; } ;
 scalar_t__ DW_EH_PE_omit ;


 int abort () ;
 struct cie_entry* cie_root ;
 int output_cie (struct cie_entry*) ;
 struct cie_entry* xmalloc (int) ;

__attribute__((used)) static struct cie_entry *
select_cie_for_fde (struct fde_entry *fde, struct cfi_insn_data **pfirst)
{
  struct cfi_insn_data *i, *j;
  struct cie_entry *cie;

  for (cie = cie_root; cie; cie = cie->next)
    {
      if (cie->return_column != fde->return_column
   || cie->signal_frame != fde->signal_frame
   || cie->per_encoding != fde->per_encoding
   || cie->lsda_encoding != fde->lsda_encoding)
 continue;
      if (cie->per_encoding != DW_EH_PE_omit)
 {
   if (cie->personality.X_op != fde->personality.X_op
       || cie->personality.X_add_number
   != fde->personality.X_add_number)
     continue;
   switch (cie->personality.X_op)
     {
     case 129:
       if (cie->personality.X_unsigned != fde->personality.X_unsigned)
  continue;
       break;
     case 128:
       if (cie->personality.X_add_symbol
    != fde->personality.X_add_symbol)
  continue;
       break;
     default:
       abort ();
     }
 }
      for (i = cie->first, j = fde->data;
    i != cie->last && j != ((void*)0);
    i = i->next, j = j->next)
 {
   if (i->insn != j->insn)
     goto fail;
   switch (i->insn)
     {
     case 139:
     case 133:


       goto fail;

     case 135:
     case 138:
       if (i->u.ri.reg != j->u.ri.reg)
  goto fail;
       if (i->u.ri.offset != j->u.ri.offset)
  goto fail;
       break;

     case 134:
       if (i->u.rr.reg1 != j->u.rr.reg1)
  goto fail;
       if (i->u.rr.reg2 != j->u.rr.reg2)
  goto fail;
       break;

     case 136:
     case 132:
     case 130:
     case 131:
       if (i->u.r != j->u.r)
  goto fail;
       break;

     case 137:
       if (i->u.i != j->u.i)
  goto fail;
       break;

     case 140:

       goto fail;

     default:
       abort ();
     }
 }




      if (i == cie->last
   && (!j
       || j->insn == 139
       || j->insn == 133
       || j->insn == 140))
 {
   *pfirst = j;
   return cie;
 }

    fail:;
    }

  cie = xmalloc (sizeof (struct cie_entry));
  cie->next = cie_root;
  cie_root = cie;
  cie->return_column = fde->return_column;
  cie->signal_frame = fde->signal_frame;
  cie->per_encoding = fde->per_encoding;
  cie->lsda_encoding = fde->lsda_encoding;
  cie->personality = fde->personality;
  cie->first = fde->data;

  for (i = cie->first; i ; i = i->next)
    if (i->insn == 139
 || i->insn == 133
 || i->insn == 140)
      break;

  cie->last = i;
  *pfirst = i;

  output_cie (cie);

  return cie;
}
