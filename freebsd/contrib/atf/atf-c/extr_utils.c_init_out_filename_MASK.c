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
typedef  scalar_t__ pid_t ;
typedef  int /*<<< orphan*/  buffer ;
typedef  int /*<<< orphan*/  atf_error_t ;
typedef  int /*<<< orphan*/  atf_dynstr_t ;

/* Variables and functions */
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int,char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,char*) ; 

__attribute__((used)) static void
FUNC5(atf_dynstr_t *name, const pid_t pid, const char *suffix,
                  const bool in_parent)
{
    atf_error_t error;

    error = FUNC0(name, "atf_utils_fork_%d_%s.txt",
                                (int)pid, suffix);
    if (FUNC2(error)) {
        char buffer[1024];
        FUNC1(error, buffer, sizeof(buffer));
        if (in_parent) {
            FUNC3("Failed to create output file: %s", buffer);
        } else {
            FUNC4(EXIT_FAILURE, "Failed to create output file: %s", buffer);
        }
    }
}