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
struct neon_type_el {unsigned int size; scalar_t__ type; } ;
typedef  enum neon_shape { ____Placeholder_neon_shape } neon_shape ;
struct TYPE_4__ {TYPE_1__* operands; } ;
struct TYPE_3__ {int imm; scalar_t__ present; } ;

/* Variables and functions */
 int /*<<< orphan*/  NS_DDI ; 
 int /*<<< orphan*/  NS_NULL ; 
 int /*<<< orphan*/  NS_QQI ; 
 scalar_t__ NT_unsigned ; 
 int /*<<< orphan*/  N_EQK ; 
 int N_KEY ; 
 int N_SU_ALL ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 TYPE_2__ inst ; 
 struct neon_type_el FUNC3 (int,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,struct neon_type_el,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC7 (void)
{
  enum neon_shape rs = FUNC6 (NS_DDI, NS_QQI, NS_NULL);
  struct neon_type_el et = FUNC3 (2, rs, N_EQK, N_SU_ALL | N_KEY);
  int imm = inst.operands[2].imm;

  /* imm == 0 case is encoded as VMOV for V{R}SHR.  */
  if (imm == 0)
    {
      inst.operands[2].present = 0;
      FUNC2 ();
      return;
    }

  FUNC1 (imm < 1 || (unsigned)imm > et.size,
              FUNC0("immediate out of range for shift"));
  FUNC4 (TRUE, et.type == NT_unsigned, FUNC5 (rs), et,
                  et.size - imm);
}