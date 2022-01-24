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
struct TYPE_5__ {char* input_result; } ;
struct TYPE_4__ {char* name; } ;
typedef  TYPE_1__ DIALOG_LISTITEM ;

/* Variables and functions */
 int DLG_EXIT_EXTRA ; 
 TYPE_3__ dialog_vars ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

int
FUNC2(DIALOG_LISTITEM * items, int current, char *newtext)
{
    if (dialog_vars.input_result)
	dialog_vars.input_result[0] = '\0';
    FUNC0("RENAMED ");
    FUNC1(items[current].name);
    FUNC0(" ");
    FUNC1(newtext);
    return DLG_EXIT_EXTRA;
}