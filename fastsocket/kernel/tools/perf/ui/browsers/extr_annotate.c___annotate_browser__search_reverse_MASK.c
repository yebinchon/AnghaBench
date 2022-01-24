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
struct disasm_line {int dummy; } ;
struct annotate_browser {int searching_backwards; int /*<<< orphan*/  search_bf; } ;
typedef  int /*<<< orphan*/  s64 ;

/* Variables and functions */
 struct disasm_line* FUNC0 (struct annotate_browser*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct annotate_browser*,struct disasm_line*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

__attribute__((used)) static bool FUNC3(struct annotate_browser *browser)
{
	struct disasm_line *dl;
	s64 idx;

	dl = FUNC0(browser, browser->search_bf, &idx);
	if (dl == NULL) {
		FUNC2("String not found!");
		return false;
	}

	FUNC1(browser, dl, idx);
	browser->searching_backwards = true;
	return true;
}