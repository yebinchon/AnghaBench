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
struct TYPE_4__ {int const hscroll; int /*<<< orphan*/  text; } ;
typedef  TYPE_1__ MY_OBJ ;

/* Variables and functions */
 scalar_t__ ERR ; 
 int FUNC0 (char*) ; 
 int* FUNC1 (char*) ; 
 int* FUNC2 (char*) ; 
 char* FUNC3 (TYPE_1__*) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int const) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC9(MY_OBJ * obj, int row, int width)
{
    if (FUNC8(obj->text, row, 0) != ERR) {
	int i, y, x;
	char *line = FUNC3(obj);
	const int *cols = FUNC1(line);
	const int *indx = FUNC2(line);
	int limit = FUNC0(line);
	int first = 0;
	int last = limit;

	if (width > FUNC4(obj->text))
	    width = FUNC4(obj->text);
	--width;		/* for the leading ' ' */

	for (i = 0; i <= limit && cols[i] < obj->hscroll; ++i)
	    first = i;

	for (i = first; (i <= limit) && ((cols[i] - cols[first]) < width); ++i)
	    last = i;

	(void) FUNC6(obj->text, ' ');
	(void) FUNC7(obj->text, line + indx[first], indx[last] - indx[first]);

	FUNC5(obj->text, y, x);
	if (y == row) {		/* Clear 'residue' of previous line */
	    for (i = 0; i <= width - x; i++) {
		(void) FUNC6(obj->text, ' ');
	    }
	}
    }
}