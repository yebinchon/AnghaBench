
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int symbolS ;
struct TYPE_4__ {int * X_op_symbol; void* X_op; int * X_add_symbol; scalar_t__ X_add_number; } ;
struct fde_entry {int lsda_encoding; TYPE_1__ lsda; int * start_address; int * end_address; } ;
struct cie_entry {int * start_address; } ;
struct cfi_insn_data {struct cfi_insn_data* next; } ;
typedef int offsetT ;
typedef TYPE_1__ expressionS ;


 int DW_CFA_nop ;
 int DW_EH_PE_omit ;
 int DW_EH_PE_pcrel ;
 void* O_subtract ;
 void* O_symbol ;
 int abort () ;
 int emit_expr (TYPE_1__*,int) ;
 int encoding_size (int) ;
 int frag_align (int,int ,int ) ;
 int out_uleb128 (int) ;
 int output_cfi_insn (struct cfi_insn_data*) ;
 int symbol_set_value_now (int *) ;
 int * symbol_temp_make () ;
 void* symbol_temp_new_now () ;
 int tc_cfi_emit_pcrel_expr (TYPE_1__*,int) ;

__attribute__((used)) static void
output_fde (struct fde_entry *fde, struct cie_entry *cie,
     struct cfi_insn_data *first, int align)
{
  symbolS *after_size_address, *end_address;
  expressionS exp;
  offsetT augmentation_size;

  after_size_address = symbol_temp_make ();
  end_address = symbol_temp_make ();

  exp.X_op = O_subtract;
  exp.X_add_symbol = end_address;
  exp.X_op_symbol = after_size_address;
  exp.X_add_number = 0;
  emit_expr (&exp, 4);
  symbol_set_value_now (after_size_address);

  exp.X_add_symbol = after_size_address;
  exp.X_op_symbol = cie->start_address;
  emit_expr (&exp, 4);






  exp.X_op = O_symbol;
  exp.X_add_symbol = fde->start_address;
  exp.X_op_symbol = ((void*)0);



  emit_expr (&exp, 4);

  exp.X_op = O_subtract;


  exp.X_add_symbol = fde->end_address;
  exp.X_op_symbol = fde->start_address;
  emit_expr (&exp, 4);

  augmentation_size = encoding_size (fde->lsda_encoding);
  out_uleb128 (augmentation_size);

  if (fde->lsda_encoding != DW_EH_PE_omit)
    {
      exp = fde->lsda;
      if ((fde->lsda_encoding & 0x70) == DW_EH_PE_pcrel)
 {







   abort ();

 }
      else
 emit_expr (&exp, augmentation_size);
    }

  for (; first; first = first->next)
    output_cfi_insn (first);

  frag_align (align, DW_CFA_nop, 0);
  symbol_set_value_now (end_address);
}
