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
struct arglist {int count; int capacity; char** args; } ;
typedef  int /*<<< orphan*/  newargs ;

/* Variables and functions */
 int INT_MAX ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char**,char**,int) ; 
 char** FUNC2 (int) ; 

void
FUNC3(struct arglist *list, char *str)
{
	char **newargs;
	int newcapacity;

	if (list->count >= list->capacity) {
		newcapacity = list->capacity * 2;
		if (newcapacity < 16)
			newcapacity = 16;
		if (newcapacity > INT_MAX / (int)sizeof(newargs[0]))
			FUNC0("Too many entries in arglist");
		newargs = FUNC2(newcapacity * sizeof(newargs[0]));
		FUNC1(newargs, list->args, list->count * sizeof(newargs[0]));
		list->args = newargs;
		list->capacity = newcapacity;
	}
	list->args[list->count++] = str;
}