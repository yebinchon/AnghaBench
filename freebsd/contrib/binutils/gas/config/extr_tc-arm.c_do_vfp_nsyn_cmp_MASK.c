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
struct TYPE_4__ {int instruction; TYPE_1__* operands; } ;
struct TYPE_3__ {scalar_t__ isreg; } ;

/* Variables and functions */
 void* FUNC0 (int) ; 
 void* FUNC1 (int) ; 
 int /*<<< orphan*/  NS_DD ; 
 int /*<<< orphan*/  NS_DI ; 
 int NS_FF ; 
 int NS_FI ; 
 int /*<<< orphan*/  NS_NULL ; 
 int N_EQK ; 
 int N_F32 ; 
 int N_F64 ; 
 int N_KEY ; 
#define  N_MNEM_vcmp 129 
#define  N_MNEM_vcmpe 128 
 int const N_MNEM_vcmpez ; 
 int const N_MNEM_vcmpz ; 
 int N_VFP ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 TYPE_2__ inst ; 
 int /*<<< orphan*/  FUNC8 (int,int,int,int) ; 
 int FUNC9 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC10 (void)
{
  if (inst.operands[1].isreg)
    {
      enum neon_shape rs = FUNC9 (NS_FF, NS_DD, NS_NULL);
      FUNC8 (2, rs, N_EQK | N_VFP, N_F32 | N_F64 | N_KEY | N_VFP);
      
      if (rs == NS_FF)
        {
          inst.instruction = FUNC1 (inst.instruction);
          FUNC7 ();
        }
      else
        {
          inst.instruction = FUNC0 (inst.instruction);
          FUNC5 ();
        }
    }
  else
    {
      enum neon_shape rs = FUNC9 (NS_FI, NS_DI, NS_NULL);
      FUNC8 (2, rs, N_F32 | N_F64 | N_KEY | N_VFP, N_EQK);

      switch (inst.instruction & 0x0fffffff)
        {
        case N_MNEM_vcmp:
          inst.instruction += N_MNEM_vcmpz - N_MNEM_vcmp;
          break;
        case N_MNEM_vcmpe:
          inst.instruction += N_MNEM_vcmpez - N_MNEM_vcmpe;
          break;
        default:
          FUNC2 ();
        }
     
      if (rs == NS_FI)
        {
          inst.instruction = FUNC1 (inst.instruction);
          FUNC6 ();
        }
      else
        {
          inst.instruction = FUNC0 (inst.instruction);
          FUNC4 ();
        }
    }
  FUNC3 ();
}