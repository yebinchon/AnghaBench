#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  offset; } ;
struct TYPE_4__ {TYPE_1__ target; } ;
struct disasm_line {TYPE_2__ ops; int /*<<< orphan*/  ins; } ;
struct annotate_browser {struct disasm_line* selection; } ;
typedef  int /*<<< orphan*/  s64 ;

/* Variables and functions */
 struct disasm_line* FUNC0 (struct annotate_browser*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct annotate_browser*,struct disasm_line*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

__attribute__((used)) static bool FUNC4(struct annotate_browser *browser)
{
	struct disasm_line *dl = browser->selection;
	s64 idx;

	if (!FUNC2(dl->ins))
		return false;

	dl = FUNC0(browser, dl->ops.target.offset, &idx);
	if (dl == NULL) {
		FUNC3("Invallid jump offset");
		return true;
	}

	FUNC1(browser, dl, idx);
	
	return true;
}