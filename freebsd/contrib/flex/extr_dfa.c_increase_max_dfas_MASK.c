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
 scalar_t__ MAX_DFAS_INCREMENT ; 
 scalar_t__ accsiz ; 
 scalar_t__ base ; 
 int /*<<< orphan*/  current_max_dfas ; 
 scalar_t__ def ; 
 int /*<<< orphan*/  dfaacc ; 
 scalar_t__ dfasiz ; 
 scalar_t__ dhash ; 
 int /*<<< orphan*/  dss ; 
 scalar_t__ nultrans ; 
 int /*<<< orphan*/  num_reallocs ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 

void FUNC3 ()
{
	current_max_dfas += MAX_DFAS_INCREMENT;

	++num_reallocs;

	base = FUNC2 (base, current_max_dfas);
	def = FUNC2 (def, current_max_dfas);
	dfasiz = FUNC2 (dfasiz, current_max_dfas);
	accsiz = FUNC2 (accsiz, current_max_dfas);
	dhash = FUNC2 (dhash, current_max_dfas);
	dss = FUNC1 (dss, current_max_dfas);
	dfaacc = FUNC0 (dfaacc, current_max_dfas);

	if (nultrans)
		nultrans =
			FUNC2 (nultrans,
						  current_max_dfas);
}