#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {char* name; } ;
typedef  TYPE_1__ DIALOG_LISTITEM ;

/* Variables and functions */
#define  DLG_EXIT_EXTRA 130 
#define  DLG_EXIT_HELP 129 
#define  DLG_EXIT_OK 128 
 int /*<<< orphan*/  FUNC0 (int*,char**,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

__attribute__((used)) static int
FUNC2(int code, DIALOG_LISTITEM * items, int choice)
{
    char *help_result;

    switch (code) {
    case DLG_EXIT_OK:		/* FALLTHRU */
    case DLG_EXIT_EXTRA:
	FUNC1(items[choice].name);
	break;
    case DLG_EXIT_HELP:
	FUNC0(&code, &help_result, &items[choice]);
	FUNC1(help_result);
	break;
    }
    return code;
}