#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  buf; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FOR ; 
 TYPE_1__* accumFor ; 
 int /*<<< orphan*/  debug_file ; 
 int forLevel ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 scalar_t__ FUNC4 (unsigned char) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 scalar_t__ FUNC6 (char*,char*,int) ; 

int
FUNC7(char *line)
{
    char *ptr = line;

    if (*ptr == '.') {

	for (ptr++; *ptr && FUNC4((unsigned char) *ptr); ptr++)
	    continue;

	if (FUNC6(ptr, "endfor", 6) == 0 &&
		(FUNC4((unsigned char) ptr[6]) || !ptr[6])) {
	    if (FUNC2(FOR))
		(void)FUNC3(debug_file, "For: end for %d\n", forLevel);
	    if (--forLevel <= 0)
		return 0;
	} else if (FUNC6(ptr, "for", 3) == 0 &&
		 FUNC4((unsigned char) ptr[3])) {
	    forLevel++;
	    if (FUNC2(FOR))
		(void)FUNC3(debug_file, "For: new loop %d\n", forLevel);
	}
    }

    FUNC1(&accumFor->buf, FUNC5(line), line);
    FUNC0(&accumFor->buf, '\n');
    return 1;
}