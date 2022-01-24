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
typedef  enum gen_funcs { ____Placeholder_gen_funcs } gen_funcs ;

/* Variables and functions */
 int GEN_FUNCS_C ; 
 int GEN_FUNCS_H ; 
 int /*<<< orphan*/  FUNC0 (int,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  stdout ; 

__attribute__((used)) static void
FUNC5(int argc, char *argv[], enum gen_funcs gen_funcs)
{
	if (gen_funcs == GEN_FUNCS_C) {
		if (argc == 0)
			FUNC3(stdout, 1);
		else {
			for (int i = 0; i < argc; i++)
				if (FUNC4(stdout, argv[i]))
					FUNC0(1, "enum not found: %s", argv[i]);
		}
	} else {
		if (argc == 0)
			FUNC1(stdout, gen_funcs == GEN_FUNCS_H);
		else {
			for (int i = 0; i < argc; i++)
				if (FUNC2(stdout, argv[i],
				    gen_funcs == GEN_FUNCS_H))
					FUNC0(1, "enum not found: %s", argv[i]);
		}
	}
}