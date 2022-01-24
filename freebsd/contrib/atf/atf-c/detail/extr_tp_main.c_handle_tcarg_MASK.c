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
typedef  enum tc_part { ____Placeholder_tc_part } tc_part ;
typedef  int /*<<< orphan*/  atf_error_t ;

/* Variables and functions */
 int BODY ; 
 int CLEANUP ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 char* FUNC2 (char*,char) ; 
 scalar_t__ FUNC3 (char*,char*) ; 
 char* FUNC4 (char const*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 

__attribute__((used)) static
atf_error_t
FUNC6(const char *tcarg, char **tcname, enum tc_part *tcpart)
{
    atf_error_t err;

    err = FUNC0();

    *tcname = FUNC4(tcarg);
    if (*tcname == NULL) {
        err = FUNC1();
        goto out;
    }

    char *delim = FUNC2(*tcname, ':');
    if (delim != NULL) {
        *delim = '\0';

        delim++;
        if (FUNC3(delim, "body") == 0) {
            *tcpart = BODY;
        } else if (FUNC3(delim, "cleanup") == 0) {
            *tcpart = CLEANUP;
        } else {
            err = FUNC5("Invalid test case part `%s'", delim);
            goto out;
        }
    }

out:
    return err;
}