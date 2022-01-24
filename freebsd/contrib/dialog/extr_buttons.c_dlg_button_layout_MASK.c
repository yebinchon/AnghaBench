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

/* Variables and functions */
 int COLS ; 
 int MARGIN ; 
 scalar_t__ FUNC0 (char const**) ; 
 int /*<<< orphan*/  FUNC1 (char const**,int,int*,int*,int*) ; 

void
FUNC2(const char **labels, int *limit)
{
    int width = 1;
    int gap, margin, step;

    if (labels != 0 && FUNC0(labels)) {
	while (!FUNC1(labels, width, &gap, &margin, &step))
	    ++width;
	width += (4 * MARGIN);
	if (width > COLS)
	    width = COLS;
	if (width > *limit)
	    *limit = width;
    }
}