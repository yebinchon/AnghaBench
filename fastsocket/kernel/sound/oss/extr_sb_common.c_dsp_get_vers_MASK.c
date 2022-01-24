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
struct TYPE_4__ {int major; int minor; int /*<<< orphan*/  lock; } ;
typedef  TYPE_1__ sb_devc ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DSP_DATA_AVAIL ; 
 int /*<<< orphan*/  DSP_READ ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC6(sb_devc * devc)
{
	int i;

	unsigned long   flags;

	FUNC0(FUNC2("Entered dsp_get_vers()\n"));
	FUNC4(&devc->lock, flags);
	devc->major = devc->minor = 0;
	FUNC3(devc, 0xe1);	/* Get version */

	for (i = 100000; i; i--)
	{
		if (FUNC1(DSP_DATA_AVAIL) & 0x80)
		{
			if (devc->major == 0)
				devc->major = FUNC1(DSP_READ);
			else
			{
				devc->minor = FUNC1(DSP_READ);
				break;
			}
		}
	}
	FUNC5(&devc->lock, flags);
	FUNC0(FUNC2("DSP version %d.%02d\n", devc->major, devc->minor));
}