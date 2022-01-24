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
struct elfcopy {int /*<<< orphan*/  itf; } ;
typedef  int /*<<< orphan*/  Elftc_Bfd_Target ;

/* Variables and functions */
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int /*<<< orphan*/ * FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char const*) ; 

__attribute__((used)) static void
FUNC3(struct elfcopy *ecp, const char *target_name)
{
	Elftc_Bfd_Target *tgt;

	if ((tgt = FUNC0(target_name)) == NULL)
		FUNC2(EXIT_FAILURE, "%s: invalid target name", target_name);
	ecp->itf = FUNC1(tgt);
}