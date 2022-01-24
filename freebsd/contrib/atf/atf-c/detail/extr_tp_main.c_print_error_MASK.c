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
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  atf_error_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const,char*,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/  const,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,char*,...) ; 
 char* progname ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static
void
FUNC5(const atf_error_t err)
{
    char buf[4096];

    FUNC0(FUNC3(err));

    FUNC1(err, buf, sizeof(buf));
    FUNC4(stderr, "%s: ERROR: %s\n", progname, buf);

    if (FUNC2(err, "usage"))
        FUNC4(stderr, "%s: See atf-test-program(1) for usage details.\n",
                progname);
}