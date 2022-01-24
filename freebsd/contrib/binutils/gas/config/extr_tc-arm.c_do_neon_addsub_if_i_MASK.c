#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
 scalar_t__ FAIL ; 
 int NEON_CHECK_ARCH ; 
 int NEON_CHECK_CC ; 
 int /*<<< orphan*/  NT_untyped ; 
 int N_I64 ; 
 int N_IF_32 ; 
 scalar_t__ SUCCESS ; 
 int /*<<< orphan*/  do_vfp_nsyn_add_sub ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int) ; 

__attribute__((used)) static void
FUNC3 (void)
{
  if (FUNC1 (3, do_vfp_nsyn_add_sub) == SUCCESS)
    return;

  if (FUNC2 (NEON_CHECK_CC | NEON_CHECK_ARCH) == FAIL)
    return;

  /* The "untyped" case can't happen. Do this to stop the "U" bit being
     affected if we specify unsigned args.  */
  FUNC0 (NT_untyped, N_IF_32 | N_I64, 0);
}