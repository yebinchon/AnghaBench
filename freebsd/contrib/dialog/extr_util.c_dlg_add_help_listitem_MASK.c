#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ help_tags; } ;
struct TYPE_4__ {char* help; char* name; } ;
typedef  TYPE_1__ DIALOG_LISTITEM ;

/* Variables and functions */
 int DLG_EXIT_ITEM_HELP ; 
 int /*<<< orphan*/  HELP_PREFIX ; 
 scalar_t__ FUNC0 (char*) ; 
 TYPE_3__ dialog_vars ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

void
FUNC2(int *result, char **tag, DIALOG_LISTITEM * item)
{
    FUNC1(HELP_PREFIX);
    if (FUNC0(item->help)) {
	*tag = dialog_vars.help_tags ? item->name : item->help;
	*result = DLG_EXIT_ITEM_HELP;
    } else {
	*tag = item->name;
    }
}