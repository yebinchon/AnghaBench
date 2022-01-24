#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {char option; int /*<<< orphan*/  help_text; } ;

/* Variables and functions */
 unsigned int FUNC0 (TYPE_1__*) ; 
 int EXIT_FAILURE ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 TYPE_1__* menu ; 

__attribute__((used)) static int FUNC2(void)
{
	unsigned int i;
	char parameters[FUNC0(menu) + 1];

	for (i = 0; i < FUNC0(menu); i++)
		parameters[i] = menu[i].option;

	parameters[FUNC0(menu)] = '\0';

	FUNC1("usage: ar9170user -[%s]\n", parameters);

	for (i = 0; i < FUNC0(menu); i++)
		FUNC1("\t-%c\t%s\n", menu[i].option, menu[i].help_text);

	return EXIT_FAILURE;
}