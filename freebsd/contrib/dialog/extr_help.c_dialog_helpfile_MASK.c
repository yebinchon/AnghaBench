#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {scalar_t__ in_helpfile; void* nook; void* extra_button; void* help_button; int /*<<< orphan*/ * ok_label; int /*<<< orphan*/ * no_label; } ;
typedef  int /*<<< orphan*/  DIALOG_VARS ;

/* Variables and functions */
 int DLG_EXIT_ERROR ; 
 void* FALSE ; 
 scalar_t__ TRUE ; 
 int FUNC0 (char const*,char const*,int,int) ; 
 TYPE_1__ dialog_vars ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

int
FUNC3(const char *title,
		const char *file,
		int height,
		int width)
{
    int result = DLG_EXIT_ERROR;
    DIALOG_VARS save;

    if (!dialog_vars.in_helpfile && file != 0 && *file != '\0') {
	FUNC2(&save);

	dialog_vars.no_label = NULL;
	dialog_vars.ok_label = NULL;
	dialog_vars.help_button = FALSE;
	dialog_vars.extra_button = FALSE;
	dialog_vars.nook = FALSE;

	dialog_vars.in_helpfile = TRUE;

	result = FUNC0(title, file, height, width);

	FUNC1(&save);
    }
    return (result);
}