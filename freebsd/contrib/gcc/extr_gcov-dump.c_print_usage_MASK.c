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
 int /*<<< orphan*/  FUNC0 (char*) ; 

__attribute__((used)) static void
FUNC1 (void)
{
  FUNC0 ("Usage: gcov-dump [OPTION] ... gcovfiles\n");
  FUNC0 ("Print coverage file contents\n");
  FUNC0 ("  -h, --help           Print this help\n");
  FUNC0 ("  -v, --version        Print version number\n");
  FUNC0 ("  -l, --long           Dump record contents too\n");
  FUNC0 ("  -p, --positions      Dump record positions\n");
}