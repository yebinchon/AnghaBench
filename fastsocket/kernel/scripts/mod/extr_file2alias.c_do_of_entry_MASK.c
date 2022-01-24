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
struct of_device_id {char* name; char* type; char* compatible; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (char) ; 
 int FUNC2 (char*,char*,char*,char*) ; 

__attribute__((used)) static int FUNC3 (const char *filename, struct of_device_id *of, char *alias)
{
    int len;
    char *tmp;
    len = FUNC2 (alias, "of:N%sT%s",
                    of->name[0] ? of->name : "*",
                    of->type[0] ? of->type : "*");

    if (of->compatible[0])
        FUNC2 (&alias[len], "%sC%s",
                     of->type[0] ? "*" : "",
                     of->compatible);

    /* Replace all whitespace with underscores */
    for (tmp = alias; tmp && *tmp; tmp++)
        if (FUNC1 (*tmp))
            *tmp = '_';

    FUNC0(alias);
    return 1;
}