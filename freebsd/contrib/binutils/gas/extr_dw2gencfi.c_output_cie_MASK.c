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
struct TYPE_4__ {int /*<<< orphan*/ * X_op_symbol; void* X_op; scalar_t__ X_add_number; int /*<<< orphan*/ * X_add_symbol; } ;
struct cie_entry {int per_encoding; int lsda_encoding; int return_column; struct cfi_insn_data* last; struct cfi_insn_data* first; TYPE_1__ personality; scalar_t__ signal_frame; void* start_address; } ;
struct cfi_insn_data {struct cfi_insn_data* next; } ;
typedef  int offsetT ;
typedef  TYPE_1__ expressionS ;

/* Variables and functions */
 int /*<<< orphan*/  DWARF2_CIE_DATA_ALIGNMENT ; 
 int DWARF2_LINE_MIN_INSN_LENGTH ; 
 int /*<<< orphan*/  DW_CFA_nop ; 
 int DW_CIE_VERSION ; 
 int DW_EH_PE_omit ; 
 int DW_EH_PE_pcrel ; 
 int DW_EH_PE_sdata4 ; 
 void* O_subtract ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int) ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (struct cfi_insn_data*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC10 () ; 
 void* FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*,int) ; 

__attribute__((used)) static void
FUNC13 (struct cie_entry *cie)
{
  symbolS *after_size_address, *end_address;
  expressionS exp;
  struct cfi_insn_data *i;
  offsetT augmentation_size;

  cie->start_address = FUNC11 ();
  after_size_address = FUNC10 ();
  end_address = FUNC10 ();

  exp.X_op = O_subtract;
  exp.X_add_symbol = end_address;
  exp.X_op_symbol = after_size_address;
  exp.X_add_number = 0;

  FUNC1 (&exp, 4);				/* Length.  */
  FUNC9 (after_size_address);
  FUNC4 (0);					/* CIE id.  */
  FUNC5 (DW_CIE_VERSION);			/* Version.  */
  FUNC5 ('z');				/* Augmentation.  */
  if (cie->per_encoding != DW_EH_PE_omit)
    FUNC5 ('P');
  if (cie->lsda_encoding != DW_EH_PE_omit)
    FUNC5 ('L');
  FUNC5 ('R');
  if (cie->signal_frame)
    FUNC5 ('S');
  FUNC5 (0);
  FUNC7 (DWARF2_LINE_MIN_INSN_LENGTH);	/* Code alignment.  */
  FUNC6 (DWARF2_CIE_DATA_ALIGNMENT);	/* Data alignment.  */
  if (DW_CIE_VERSION == 1)			/* Return column.  */
    FUNC5 (cie->return_column);
  else
    FUNC7 (cie->return_column);
  augmentation_size = 1 + (cie->lsda_encoding != DW_EH_PE_omit);
  if (cie->per_encoding != DW_EH_PE_omit)
    augmentation_size += 1 + FUNC2 (cie->per_encoding);
  FUNC7 (augmentation_size);		/* Augmentation size.  */
  if (cie->per_encoding != DW_EH_PE_omit)
    {
      offsetT size = FUNC2 (cie->per_encoding);
      FUNC5 (cie->per_encoding);
      exp = cie->personality;
      if ((cie->per_encoding & 0x70) == DW_EH_PE_pcrel)
	{
#ifdef DIFF_EXPR_OK
	  exp.X_op = O_subtract;
	  exp.X_op_symbol = symbol_temp_new_now ();
	  emit_expr (&exp, size);
#elif defined (tc_cfi_emit_pcrel_expr)
	  tc_cfi_emit_pcrel_expr (&exp, size);
#else
	  FUNC0 ();
#endif
	}
      else
	FUNC1 (&exp, size);
    }
  if (cie->lsda_encoding != DW_EH_PE_omit)
    FUNC5 (cie->lsda_encoding);
#if defined DIFF_EXPR_OK || defined tc_cfi_emit_pcrel_expr
  out_one (DW_EH_PE_pcrel | DW_EH_PE_sdata4);
#else
  FUNC5 (DW_EH_PE_sdata4);
#endif

  if (cie->first)
    for (i = cie->first; i != cie->last; i = i->next)
      FUNC8 (i);

  FUNC3 (2, DW_CFA_nop, 0);
  FUNC9 (end_address);
}