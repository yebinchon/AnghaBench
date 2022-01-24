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
struct file_line {char* file; int lineno; int /*<<< orphan*/ * next; } ;

/* Variables and functions */
 struct file_line* FUNC0 (int) ; 

__attribute__((used)) static struct file_line *FUNC1(char *file, int lineno)
{
	struct file_line *self = FUNC0(sizeof(*self));

	if (self == NULL)
		goto out;

	self->file   = file;
	self->lineno = lineno;
	self->next   = NULL;
out:
	return self;
}