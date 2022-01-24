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
typedef  int /*<<< orphan*/  snd_wavefront_t ;

/* Variables and functions */
 int /*<<< orphan*/  WFC_REPORT_FREE_MEMORY ; 
 int FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC3 (snd_wavefront_t *dev)

{
	char rbuf[8];

	if (FUNC2 (dev, WFC_REPORT_FREE_MEMORY, rbuf, NULL)) {
		FUNC1 ("can't get memory stats.\n");
		return -1;
	} else {
		return FUNC0 (rbuf, 4);
	}
}