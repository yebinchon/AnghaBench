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
 int /*<<< orphan*/  data_sections ; 
 int /*<<< orphan*/  head_sections ; 
 int /*<<< orphan*/  init_data_sections ; 
 int /*<<< orphan*/  init_exit_sections ; 
 int /*<<< orphan*/  init_sections ; 
 int /*<<< orphan*/  linker_symbols ; 
 scalar_t__ FUNC0 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (char const*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  symbol_white_list ; 

__attribute__((used)) static int FUNC3(const char *fromsec, const char *fromsym,
			    const char *tosec, const char *tosym)
{
	/* Check for pattern 1 */
	if (FUNC0(tosec, init_data_sections) &&
	    FUNC0(fromsec, data_sections) &&
	    (FUNC2(fromsym, "__param", FUNC1("__param")) == 0))
		return 0;

	/* Check for pattern 2 */
	if (FUNC0(tosec, init_exit_sections) &&
	    FUNC0(fromsec, data_sections) &&
	    FUNC0(fromsym, symbol_white_list))
		return 0;

	/* Check for pattern 3 */
	if (FUNC0(fromsec, head_sections) &&
	    FUNC0(tosec, init_sections))
		return 0;

	/* Check for pattern 4 */
	if (FUNC0(tosym, linker_symbols))
		return 0;

	return 1;
}