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
 int /*<<< orphan*/  ENTER ; 
 int /*<<< orphan*/  FREETMPS ; 
 int /*<<< orphan*/  G_SCALAR ; 
 int /*<<< orphan*/  LEAVE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PUTBACK ; 
 int /*<<< orphan*/  SAVETMPS ; 
 int /*<<< orphan*/  SP ; 
 int /*<<< orphan*/  SPAGAIN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dSP ; 
 scalar_t__ FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(const char *ev_name,
			      const char *field_name,
			      const char *delim)
{
	dSP;

	ENTER;
	SAVETMPS;
	FUNC0(SP);

	FUNC1(FUNC5(FUNC4(ev_name, 0)));
	FUNC1(FUNC5(FUNC4(field_name, 0)));
	FUNC1(FUNC5(FUNC4(delim, 0)));

	PUTBACK;
	if (FUNC3("main::define_flag_field", 0))
		FUNC2("main::define_flag_field", G_SCALAR);
	SPAGAIN;
	PUTBACK;
	FREETMPS;
	LEAVE;
}