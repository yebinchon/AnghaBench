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
 int /*<<< orphan*/  REG_NOSUB ; 
 int /*<<< orphan*/  constructor_pattern ; 
 int /*<<< orphan*/  destructor_pattern ; 
 int /*<<< orphan*/  hpacc_abi_ops ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  operator_pattern ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void
FUNC3 (void)
{
  FUNC0 ();

  FUNC1 (&constructor_pattern,
	   "^This will never match anything, please fill it in$", REG_NOSUB);

  FUNC1 (&destructor_pattern,
	   "^This will never match anything, please fill it in$", REG_NOSUB);

  FUNC1 (&operator_pattern,
	   "^This will never match anything, please fill it in$", REG_NOSUB);

  FUNC2 (&hpacc_abi_ops);
}