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
typedef  enum neon_shape { ____Placeholder_neon_shape } neon_shape ;
struct TYPE_4__ {unsigned int instruction; TYPE_1__* operands; } ;
struct TYPE_3__ {int /*<<< orphan*/  reg; int /*<<< orphan*/  imm; int /*<<< orphan*/  present; } ;

/* Variables and functions */
 int /*<<< orphan*/  FAIL ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int NEON_CHECK_ARCH ; 
 int NEON_CHECK_CC ; 
 unsigned int FUNC2 (unsigned int) ; 
 unsigned int FUNC3 (unsigned int) ; 
#define  NS_DD 131 
#define  NS_DDI 130 
 int /*<<< orphan*/  NS_DF ; 
 int /*<<< orphan*/  NS_FD ; 
 int /*<<< orphan*/  NS_FF ; 
 int /*<<< orphan*/  NS_FFI ; 
 int /*<<< orphan*/  NS_NULL ; 
#define  NS_QQ 129 
#define  NS_QQI 128 
 int /*<<< orphan*/  FUNC4 (int,int) ; 
 TYPE_2__ inst ; 
 int FUNC5 (int) ; 
 void* FUNC6 (unsigned int) ; 
 int FUNC7 (int) ; 
 int FUNC8 (int,int,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 

__attribute__((used)) static void
FUNC10 (void)
{
  enum neon_shape rs = FUNC8 (NS_DDI, NS_QQI, NS_FFI, NS_DD, NS_QQ,
    NS_FD, NS_DF, NS_FF, NS_NULL);
  int flavour = FUNC5 (rs);

  /* VFP rather than Neon conversions.  */
  if (flavour >= 4)
    {
      FUNC4 (rs, flavour);
      return;
    }

  switch (rs)
    {
    case NS_DDI:
    case NS_QQI:
      {
        if (FUNC9 (NEON_CHECK_CC | NEON_CHECK_ARCH) == FAIL)
          return;

        /* Fixed-point conversion with #0 immediate is encoded as an
           integer conversion.  */
        if (inst.operands[2].present && inst.operands[2].imm == 0)
          goto int_encode;
        unsigned immbits = 32 - inst.operands[2].imm;
        unsigned enctab[] = { 0x0000100, 0x1000100, 0x0, 0x1000000 };
        inst.instruction = FUNC2 (inst.instruction);
        if (flavour != -1)
          inst.instruction |= enctab[flavour];
        inst.instruction |= FUNC1 (inst.operands[0].reg) << 12;
        inst.instruction |= FUNC0 (inst.operands[0].reg) << 22;
        inst.instruction |= FUNC1 (inst.operands[1].reg);
        inst.instruction |= FUNC0 (inst.operands[1].reg) << 5;
        inst.instruction |= FUNC7 (rs) << 6;
        inst.instruction |= 1 << 21;
        inst.instruction |= immbits << 16;

        inst.instruction = FUNC6 (inst.instruction);
      }
      break;

    case NS_DD:
    case NS_QQ:
    int_encode:
      {
        unsigned enctab[] = { 0x100, 0x180, 0x0, 0x080 };

        inst.instruction = FUNC3 (inst.instruction);

        if (FUNC9 (NEON_CHECK_CC | NEON_CHECK_ARCH) == FAIL)
          return;

        if (flavour != -1)
          inst.instruction |= enctab[flavour];

        inst.instruction |= FUNC1 (inst.operands[0].reg) << 12;
        inst.instruction |= FUNC0 (inst.operands[0].reg) << 22;
        inst.instruction |= FUNC1 (inst.operands[1].reg);
        inst.instruction |= FUNC0 (inst.operands[1].reg) << 5;
        inst.instruction |= FUNC7 (rs) << 6;
        inst.instruction |= 2 << 18;

        inst.instruction = FUNC6 (inst.instruction);
      }
    break;

    default:
      /* Some VFP conversions go here (s32 <-> f32, u32 <-> f32).  */
      FUNC4 (rs, flavour);
    }
}