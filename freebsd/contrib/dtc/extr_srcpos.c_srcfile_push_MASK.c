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
struct srcfile_state {int lineno; int colno; struct srcfile_state* prev; int /*<<< orphan*/  name; int /*<<< orphan*/  dir; int /*<<< orphan*/  f; } ;

/* Variables and functions */
 scalar_t__ MAX_SRCFILE_DEPTH ; 
 struct srcfile_state* current_srcfile ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  srcfile_depth ; 
 int /*<<< orphan*/  FUNC2 (char const*,int /*<<< orphan*/ *) ; 
 struct srcfile_state* FUNC3 (int) ; 

void FUNC4(const char *fname)
{
	struct srcfile_state *srcfile;

	if (srcfile_depth++ >= MAX_SRCFILE_DEPTH)
		FUNC0("Includes nested too deeply");

	srcfile = FUNC3(sizeof(*srcfile));

	srcfile->f = FUNC2(fname, &srcfile->name);
	srcfile->dir = FUNC1(srcfile->name);
	srcfile->prev = current_srcfile;

	srcfile->lineno = 1;
	srcfile->colno = 1;

	current_srcfile = srcfile;
}