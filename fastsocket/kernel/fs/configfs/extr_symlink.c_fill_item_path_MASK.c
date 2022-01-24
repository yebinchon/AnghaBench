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
struct config_item {struct config_item* ci_parent; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct config_item*) ; 
 int /*<<< orphan*/  FUNC1 (struct config_item*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC4(struct config_item * item, char * buffer, int length)
{
	struct config_item * p;

	--length;
	for (p = item; p && !FUNC1(p); p = p->ci_parent) {
		int cur = FUNC2(FUNC0(p));

		/* back up enough to print this bus id with '/' */
		length -= cur;
		FUNC3(buffer + length,FUNC0(p),cur);
		*(buffer + --length) = '/';
	}
}