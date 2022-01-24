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
typedef  int /*<<< orphan*/  MY_OBJ ;

/* Variables and functions */
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  FUNC0 (char*,long,long) ; 
 long FUNC1 (int /*<<< orphan*/ *,long,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(MY_OBJ * obj, long offset)
{
    long actual = FUNC1(obj, offset, SEEK_SET);

    if (actual != offset) {
	FUNC0("Cannot set file position to %ld (actual %ld)\n",
		    offset, actual);
    }
}