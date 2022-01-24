#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int ncols; int* col_type; int ra; int cfa_reg; int* col_offset; int /*<<< orphan*/  cfa_offset; scalar_t__ cfa_exp; int /*<<< orphan*/  pc_begin; } ;
typedef  TYPE_1__ Frame_Chunk ;

/* Variables and functions */
#define  DW_CFA_expression 134 
#define  DW_CFA_offset 133 
#define  DW_CFA_register 132 
#define  DW_CFA_same_value 131 
#define  DW_CFA_undefined 130 
 int DW_CFA_unreferenced ; 
#define  DW_CFA_val_expression 129 
#define  DW_CFA_val_offset 128 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int,...) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 

__attribute__((used)) static void
FUNC3 (Frame_Chunk *fc, int *need_col_headers, int *max_regs)
{
  int r;
  char tmp[100];

  if (*max_regs < fc->ncols)
    *max_regs = fc->ncols;

  if (*need_col_headers)
    {
      *need_col_headers = 0;

      FUNC0 ("   LOC   CFA      ");

      for (r = 0; r < *max_regs; r++)
	if (fc->col_type[r] != DW_CFA_unreferenced)
	  {
	    if (r == fc->ra)
	      FUNC0 ("ra   ");
	    else
	      FUNC0 ("r%-4d", r);
	  }

      FUNC0 ("\n");
    }

  FUNC0 ("%08lx ", fc->pc_begin);
  if (fc->cfa_exp)
    FUNC2 (tmp, "exp");
  else
    FUNC1 (tmp, "r%d%+d", fc->cfa_reg, fc->cfa_offset);
  FUNC0 ("%-8s ", tmp);

  for (r = 0; r < fc->ncols; r++)
    {
      if (fc->col_type[r] != DW_CFA_unreferenced)
	{
	  switch (fc->col_type[r])
	    {
	    case DW_CFA_undefined:
	      FUNC2 (tmp, "u");
	      break;
	    case DW_CFA_same_value:
	      FUNC2 (tmp, "s");
	      break;
	    case DW_CFA_offset:
	      FUNC1 (tmp, "c%+d", fc->col_offset[r]);
	      break;
	    case DW_CFA_val_offset:
	      FUNC1 (tmp, "v%+d", fc->col_offset[r]);
	      break;
	    case DW_CFA_register:
	      FUNC1 (tmp, "r%d", fc->col_offset[r]);
	      break;
	    case DW_CFA_expression:
	      FUNC2 (tmp, "exp");
	      break;
	    case DW_CFA_val_expression:
	      FUNC2 (tmp, "vexp");
	      break;
	    default:
	      FUNC2 (tmp, "n/a");
	      break;
	    }
	  FUNC0 ("%-5s", tmp);
	}
    }
  FUNC0 ("\n");
}