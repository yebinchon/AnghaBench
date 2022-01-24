#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ offsetT ;
struct TYPE_6__ {TYPE_2__* frch_cfi_data; } ;
struct TYPE_5__ {TYPE_1__* cur_fde_data; scalar_t__ cur_cfa_offset; int /*<<< orphan*/  last_address; } ;
struct TYPE_4__ {int signal_frame; } ;

/* Variables and functions */
#define  CFI_adjust_cfa_offset 142 
#define  CFI_rel_offset 141 
#define  CFI_return_column 140 
#define  CFI_signal_frame 139 
#define  DW_CFA_GNU_window_save 138 
#define  DW_CFA_def_cfa 137 
#define  DW_CFA_def_cfa_offset 136 
#define  DW_CFA_def_cfa_register 135 
#define  DW_CFA_offset 134 
#define  DW_CFA_register 133 
#define  DW_CFA_remember_state 132 
#define  DW_CFA_restore 131 
#define  DW_CFA_restore_state 130 
#define  DW_CFA_same_value 129 
#define  DW_CFA_undefined 128 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (unsigned int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (unsigned int) ; 
 int /*<<< orphan*/  FUNC8 (int const) ; 
 int /*<<< orphan*/  FUNC9 (unsigned int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (unsigned int) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (unsigned int) ; 
 int /*<<< orphan*/  FUNC15 (unsigned int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC17 () ; 
 unsigned int FUNC18 () ; 
 int /*<<< orphan*/  FUNC19 () ; 
 int /*<<< orphan*/  FUNC20 (unsigned int) ; 
 int /*<<< orphan*/  FUNC21 () ; 
 scalar_t__ frag_now ; 
 scalar_t__ FUNC22 () ; 
 TYPE_3__* frchain_now ; 
 int /*<<< orphan*/  FUNC23 () ; 
 char* input_line_pointer ; 
 scalar_t__ FUNC24 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 () ; 

__attribute__((used)) static void
FUNC26 (int arg)
{
  offsetT offset;
  unsigned reg1, reg2;

  if (frchain_now->frch_cfi_data == NULL)
    {
      FUNC4 (FUNC2("CFI instruction used without previous .cfi_startproc"));
      FUNC23 ();
      return;
    }

  /* If the last address was not at the current PC, advance to current.  */
  if (FUNC24 (frchain_now->frch_cfi_data->last_address) != frag_now
      || FUNC1 (frchain_now->frch_cfi_data->last_address)
	 != FUNC22 ())
    FUNC16 (FUNC25 ());

  switch (arg)
    {
    case DW_CFA_offset:
      reg1 = FUNC18 ();
      FUNC19 ();
      offset = FUNC17 ();
      FUNC9 (reg1, offset);
      break;

    case CFI_rel_offset:
      reg1 = FUNC18 ();
      FUNC19 ();
      offset = FUNC17 ();
      FUNC9 (reg1,
			  offset - frchain_now->frch_cfi_data->cur_cfa_offset);
      break;

    case DW_CFA_def_cfa:
      reg1 = FUNC18 ();
      FUNC19 ();
      offset = FUNC17 ();
      FUNC5 (reg1, offset);
      break;

    case DW_CFA_register:
      reg1 = FUNC18 ();
      FUNC19 ();
      reg2 = FUNC18 ();
      FUNC10 (reg1, reg2);
      break;

    case DW_CFA_def_cfa_register:
      reg1 = FUNC18 ();
      FUNC7 (reg1);
      break;

    case DW_CFA_def_cfa_offset:
      offset = FUNC17 ();
      FUNC6 (offset);
      break;

    case CFI_adjust_cfa_offset:
      offset = FUNC17 ();
      FUNC6 (frchain_now->frch_cfi_data->cur_cfa_offset
				  + offset);
      break;

    case DW_CFA_restore:
      for (;;)
	{
	  reg1 = FUNC18 ();
	  FUNC12 (reg1);
	  FUNC0 ();
	  if (*input_line_pointer != ',')
	    break;
	  ++input_line_pointer;
	}
      break;

    case DW_CFA_undefined:
      for (;;)
	{
	  reg1 = FUNC18 ();
	  FUNC15 (reg1);
	  FUNC0 ();
	  if (*input_line_pointer != ',')
	    break;
	  ++input_line_pointer;
	}
      break;

    case DW_CFA_same_value:
      reg1 = FUNC18 ();
      FUNC14 (reg1);
      break;

    case CFI_return_column:
      reg1 = FUNC18 ();
      FUNC20 (reg1);
      break;

    case DW_CFA_remember_state:
      FUNC11 ();
      break;

    case DW_CFA_restore_state:
      FUNC13 ();
      break;

    case DW_CFA_GNU_window_save:
      FUNC8 (DW_CFA_GNU_window_save);
      break;

    case CFI_signal_frame:
      frchain_now->frch_cfi_data->cur_fde_data->signal_frame = 1;
      break;

    default:
      FUNC3 ();
    }

  FUNC21 ();
}