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
typedef  int /*<<< orphan*/  WINDOW ;
typedef  int /*<<< orphan*/  DIALOG_VARS ;

/* Variables and functions */
 int MAX_DAYS ; 
 int MAX_MONTHS ; 
 char** cached_days ; 
 char** cached_months ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

__attribute__((used)) static int
FUNC4(int code, WINDOW *dialog, char *prompt, DIALOG_VARS * save_vars)
{
    int n;

    if (dialog != 0)
	FUNC0(dialog);
    FUNC1();
    if (prompt != 0)
	FUNC3(prompt);
    FUNC2(save_vars);

    for (n = 0; n < MAX_DAYS; ++n) {
	FUNC3(cached_days[n]);
	cached_days[n] = 0;
    }
    for (n = 0; n < MAX_MONTHS; ++n) {
	FUNC3(cached_months[n]);
	cached_months[n] = 0;
    }

    return code;
}