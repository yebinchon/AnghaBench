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
struct TYPE_4__ {TYPE_1__* operands; } ;
struct TYPE_3__ {scalar_t__ isscalar; } ;

/* Variables and functions */
 scalar_t__ FAIL ; 
 int NEON_CHECK_ARCH ; 
 int NEON_CHECK_CC ; 
 int /*<<< orphan*/  NT_poly ; 
 int N_F32 ; 
 int N_I16 ; 
 int N_I32 ; 
 int N_I8 ; 
 int N_P8 ; 
 scalar_t__ SUCCESS ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  do_vfp_nsyn_mul ; 
 TYPE_2__ inst ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int) ; 

__attribute__((used)) static void
FUNC4 (void)
{
  if (FUNC2 (3, do_vfp_nsyn_mul) == SUCCESS)
    return;

  if (FUNC3 (NEON_CHECK_CC | NEON_CHECK_ARCH) == FAIL)
    return;

  if (inst.operands[2].isscalar)
    FUNC0 ();
  else
    FUNC1 (NT_poly, N_I8 | N_I16 | N_I32 | N_F32 | N_P8, 0);
}