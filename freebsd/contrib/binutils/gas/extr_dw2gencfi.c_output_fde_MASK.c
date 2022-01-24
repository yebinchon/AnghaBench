#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  symbolS ;
struct TYPE_4__ {int /*<<< orphan*/ * X_op_symbol; void* X_op; int /*<<< orphan*/ * X_add_symbol; scalar_t__ X_add_number; } ;
struct fde_entry {int lsda_encoding; TYPE_1__ lsda; int /*<<< orphan*/ * start_address; int /*<<< orphan*/ * end_address; } ;
struct cie_entry {int /*<<< orphan*/ * start_address; } ;
struct cfi_insn_data {struct cfi_insn_data* next; } ;
typedef  int offsetT ;
typedef  TYPE_1__ expressionS ;

/* Variables and functions */
 int /*<<< orphan*/  DW_CFA_nop ; 
 int DW_EH_PE_omit ; 
 int DW_EH_PE_pcrel ; 
 void* O_subtract ; 
 void* O_symbol ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int) ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct cfi_insn_data*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 () ; 
 void* FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int) ; 

__attribute__((used)) static void
FUNC10 (struct fde_entry *fde, struct cie_entry *cie,
	    struct cfi_insn_data *first, int align)
{
  symbolS *after_size_address, *end_address;
  expressionS exp;
  offsetT augmentation_size;

  after_size_address = FUNC7 ();
  end_address = FUNC7 ();

  exp.X_op = O_subtract;
  exp.X_add_symbol = end_address;
  exp.X_op_symbol = after_size_address;
  exp.X_add_number = 0;
  FUNC1 (&exp, 4);				/* Length.  */
  FUNC6 (after_size_address);

  exp.X_add_symbol = after_size_address;
  exp.X_op_symbol = cie->start_address;
  FUNC1 (&exp, 4);				/* CIE offset.  */

#ifdef DIFF_EXPR_OK
  exp.X_add_symbol = fde->start_address;
  exp.X_op_symbol = symbol_temp_new_now ();
  emit_expr (&exp, 4);				/* Code offset.  */
#else
  exp.X_op = O_symbol;
  exp.X_add_symbol = fde->start_address;
  exp.X_op_symbol = NULL;
#ifdef tc_cfi_emit_pcrel_expr
  tc_cfi_emit_pcrel_expr (&exp, 4);		/* Code offset.  */
#else
  FUNC1 (&exp, 4);				/* Code offset.  */
#endif
  exp.X_op = O_subtract;
#endif

  exp.X_add_symbol = fde->end_address;
  exp.X_op_symbol = fde->start_address;		/* Code length.  */
  FUNC1 (&exp, 4);

  augmentation_size = FUNC2 (fde->lsda_encoding);
  FUNC4 (augmentation_size);		/* Augmentation size.  */

  if (fde->lsda_encoding != DW_EH_PE_omit)
    {
      exp = fde->lsda;
      if ((fde->lsda_encoding & 0x70) == DW_EH_PE_pcrel)
	{
#ifdef DIFF_EXPR_OK
	  exp.X_op = O_subtract;
	  exp.X_op_symbol = symbol_temp_new_now ();
	  emit_expr (&exp, augmentation_size);
#elif defined (tc_cfi_emit_pcrel_expr)
	  tc_cfi_emit_pcrel_expr (&exp, augmentation_size);
#else
	  FUNC0 ();
#endif
	}
      else
	FUNC1 (&exp, augmentation_size);
    }

  for (; first; first = first->next)
    FUNC5 (first);

  FUNC3 (align, DW_CFA_nop, 0);
  FUNC6 (end_address);
}