#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct dis386 {TYPE_1__* op; int /*<<< orphan*/ * name; } ;
struct TYPE_4__ {int mod; unsigned char reg; size_t rm; } ;
struct TYPE_3__ {size_t bytemode; int /*<<< orphan*/  (* rtn ) (size_t,int) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  MODRM_CHECK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int* codep ; 
 int /*<<< orphan*/ *** fgrps ; 
 int /*<<< orphan*/ ** float_mem ; 
 int /*<<< orphan*/ * float_mem_mode ; 
 struct dis386** float_reg ; 
 TYPE_2__ modrm ; 
 int /*<<< orphan*/ * names16 ; 
 int /*<<< orphan*/  obufp ; 
 int op_ad ; 
 int /*<<< orphan*/ * op_out ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (size_t,int) ; 
 int /*<<< orphan*/  FUNC4 (size_t,int) ; 

__attribute__((used)) static void
FUNC5 (int sizeflag)
{
  const struct dis386 *dp;
  unsigned char floatop;

  floatop = codep[-1];

  if (modrm.mod != 3)
    {
      int fp_indx = (floatop - 0xd8) * 8 + modrm.reg;

      FUNC1 (float_mem[fp_indx], sizeflag);
      obufp = op_out[0];
      op_ad = 2;
      FUNC0 (float_mem_mode[fp_indx], sizeflag);
      return;
    }
  /* Skip mod/rm byte.  */
  MODRM_CHECK;
  codep++;

  dp = &float_reg[floatop - 0xd8][modrm.reg];
  if (dp->name == NULL)
    {
      FUNC1 (fgrps[dp->op[0].bytemode][modrm.rm], sizeflag);

      /* Instruction fnstsw is only one with strange arg.  */
      if (floatop == 0xdf && codep[-1] == 0xe0)
	FUNC2 (op_out[0], names16[0]);
    }
  else
    {
      FUNC1 (dp->name, sizeflag);

      obufp = op_out[0];
      op_ad = 2;
      if (dp->op[0].rtn)
	(*dp->op[0].rtn) (dp->op[0].bytemode, sizeflag);

      obufp = op_out[1];
      op_ad = 1;
      if (dp->op[1].rtn)
	(*dp->op[1].rtn) (dp->op[1].bytemode, sizeflag);
    }
}