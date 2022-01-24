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
struct neon_type_el {scalar_t__ type; int size; } ;
typedef  enum neon_shape { ____Placeholder_neon_shape } neon_shape ;
typedef  enum neon_opc { ____Placeholder_neon_opc } neon_opc ;
struct TYPE_4__ {int instruction; TYPE_1__* operands; } ;
struct TYPE_3__ {unsigned int imm; unsigned int reg; scalar_t__ regisimm; scalar_t__ isreg; scalar_t__ present; } ;

/* Variables and functions */
 int FAIL ; 
 int FUNC0 (unsigned int) ; 
 int FUNC1 (unsigned int) ; 
 int FUNC2 (int) ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  NS_DDD ; 
 int /*<<< orphan*/  NS_DI ; 
 int /*<<< orphan*/  NS_NULL ; 
 int /*<<< orphan*/  NS_QI ; 
 int /*<<< orphan*/  NS_QQQ ; 
 scalar_t__ NT_invtype ; 
 int /*<<< orphan*/  N_EQK ; 
 int N_F32 ; 
 int N_I16 ; 
 int N_I32 ; 
 int N_I64 ; 
 int N_I8 ; 
 int /*<<< orphan*/  N_IGNORE_TYPE ; 
 int N_KEY ; 
#define  N_MNEM_vand 131 
#define  N_MNEM_vbic 130 
#define  N_MNEM_vorn 129 
#define  N_MNEM_vorr 128 
 int /*<<< orphan*/  FUNC4 () ; 
 TYPE_2__ inst ; 
 struct neon_type_el FUNC5 (int,int,int,...) ; 
 int FUNC6 (unsigned int,unsigned int*,int) ; 
 int FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (unsigned int*,int /*<<< orphan*/ ,int) ; 
 int FUNC9 (int) ; 
 int FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (unsigned int) ; 

__attribute__((used)) static void
FUNC13 (void)
{
  if (inst.operands[2].present && inst.operands[2].isreg)
    {
      enum neon_shape rs = FUNC10 (NS_DDD, NS_QQQ, NS_NULL);
      FUNC5 (3, rs, N_IGNORE_TYPE);
      /* U bit and size field were set as part of the bitmask.  */
      inst.instruction = FUNC3 (inst.instruction);
      FUNC11 (FUNC9 (rs), 0, -1);
    }
  else
    {
      enum neon_shape rs = FUNC10 (NS_DI, NS_QI, NS_NULL);
      struct neon_type_el et = FUNC5 (2, rs,
        N_I8 | N_I16 | N_I32 | N_I64 | N_F32 | N_KEY, N_EQK);
      enum neon_opc opcode = inst.instruction & 0x0fffffff;
      unsigned immbits;
      int cmode;
      
      if (et.type == NT_invtype)
        return;
      
      inst.instruction = FUNC2 (inst.instruction);

      immbits = inst.operands[1].imm;
      if (et.size == 64)
	{
	  /* .i64 is a pseudo-op, so the immediate must be a repeating
	     pattern.  */
	  if (immbits != (inst.operands[1].regisimm ?
			  inst.operands[1].reg : 0))
	    {
	      /* Set immbits to an invalid constant.  */
	      immbits = 0xdeadbeef;
	    }
	}

      switch (opcode)
        {
        case N_MNEM_vbic:
          cmode = FUNC6 (immbits, &immbits, et.size);
          break;
        
        case N_MNEM_vorr:
          cmode = FUNC6 (immbits, &immbits, et.size);
          break;
        
        case N_MNEM_vand:
          /* Pseudo-instruction for VBIC.  */
          FUNC8 (&immbits, 0, et.size);
          cmode = FUNC6 (immbits, &immbits, et.size);
          break;
        
        case N_MNEM_vorn:
          /* Pseudo-instruction for VORR.  */
          FUNC8 (&immbits, 0, et.size);
          cmode = FUNC6 (immbits, &immbits, et.size);
          break;
        
        default:
          FUNC4 ();
        }

      if (cmode == FAIL)
        return;

      inst.instruction |= FUNC9 (rs) << 6;
      inst.instruction |= FUNC1 (inst.operands[0].reg) << 12;
      inst.instruction |= FUNC0 (inst.operands[0].reg) << 22;
      inst.instruction |= cmode << 8;
      FUNC12 (immbits);
      
      inst.instruction = FUNC7 (inst.instruction);
    }
}