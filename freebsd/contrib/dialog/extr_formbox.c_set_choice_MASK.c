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
typedef  int /*<<< orphan*/  DIALOG_FORMITEM ;

/* Variables and functions */
 int FALSE ; 
 int TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC1(DIALOG_FORMITEM item[], int choice, int item_no, bool * noneditable)
{
    int result = -1;
    int i;

    *noneditable = FALSE;
    if (!FUNC0(&item[choice])) {
	result = choice;
    } else {
	for (i = 0; i < item_no; i++) {
	    if (!FUNC0(&(item[i]))) {
		result = i;
		break;
	    }
	}
	if (result < 0) {
	    *noneditable = TRUE;
	    result = 0;
	}
    }
    return result;
}