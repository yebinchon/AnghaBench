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
struct neon_type_el {int dummy; } ;
typedef  enum neon_shape { ____Placeholder_neon_shape } neon_shape ;
struct TYPE_4__ {int /*<<< orphan*/  instruction; TYPE_1__* operands; } ;
struct TYPE_3__ {scalar_t__ isscalar; } ;

/* Variables and functions */
 scalar_t__ FAIL ; 
 int NEON_CHECK_ARCH ; 
 int NEON_CHECK_CC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NS_DDS ; 
 int /*<<< orphan*/  NS_NULL ; 
 int /*<<< orphan*/  NS_QQS ; 
 int /*<<< orphan*/  NT_untyped ; 
 int /*<<< orphan*/  N_EQK ; 
 int N_F32 ; 
 int N_I16 ; 
 int N_I32 ; 
 int /*<<< orphan*/  N_IF_32 ; 
 int N_KEY ; 
 scalar_t__ SUCCESS ; 
 int /*<<< orphan*/  do_vfp_nsyn_mla_mls ; 
 TYPE_2__ inst ; 
 struct neon_type_el FUNC1 (int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct neon_type_el,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int) ; 

__attribute__((used)) static void
FUNC8 (void)
{
  if (FUNC6 (3, do_vfp_nsyn_mla_mls) == SUCCESS)
    return;

  if (FUNC7 (NEON_CHECK_CC | NEON_CHECK_ARCH) == FAIL)
    return;

  if (inst.operands[2].isscalar)
    {
      enum neon_shape rs = FUNC5 (NS_DDS, NS_QQS, NS_NULL);
      struct neon_type_el et = FUNC1 (3, rs,
        N_EQK, N_EQK, N_I16 | N_I32 | N_F32 | N_KEY);
      inst.instruction = FUNC0 (inst.instruction);
      FUNC3 (et, FUNC4 (rs));
    }
  else
    {
      /* The "untyped" case can't happen.  Do this to stop the "U" bit being
	 affected if we specify unsigned args.  */
      FUNC2 (NT_untyped, N_IF_32, 0);
    }
}