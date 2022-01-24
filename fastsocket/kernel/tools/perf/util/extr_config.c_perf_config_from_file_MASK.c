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
typedef  int /*<<< orphan*/  config_fn_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/ * config_file ; 
 scalar_t__ config_file_eof ; 
 char const* config_file_name ; 
 int config_linenr ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char const*,char*) ; 
 int FUNC2 (int /*<<< orphan*/ ,void*) ; 

__attribute__((used)) static int FUNC3(config_fn_t fn, const char *filename, void *data)
{
	int ret;
	FILE *f = FUNC1(filename, "r");

	ret = -1;
	if (f) {
		config_file = f;
		config_file_name = filename;
		config_linenr = 1;
		config_file_eof = 0;
		ret = FUNC2(fn, data);
		FUNC0(f);
		config_file_name = NULL;
	}
	return ret;
}