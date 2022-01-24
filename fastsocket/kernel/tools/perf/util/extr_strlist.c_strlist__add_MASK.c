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
struct strlist {int /*<<< orphan*/  rblist; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,char const*) ; 

int FUNC1(struct strlist *self, const char *new_entry)
{
	return FUNC0(&self->rblist, new_entry);
}