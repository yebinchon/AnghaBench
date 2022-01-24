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
typedef  int /*<<< orphan*/  lithium_t ;

/* Variables and functions */
 int EBUSY ; 
 int LI_CC_BUSY ; 
 int /*<<< orphan*/  LI_CODEC_COMMAND ; 
 int jiffies ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int,unsigned long) ; 

__attribute__((used)) static int FUNC2(lithium_t *lith)
{
	unsigned long later = jiffies + 2;
	while (FUNC0(lith, LI_CODEC_COMMAND) & LI_CC_BUSY)
		if (FUNC1(jiffies, later))
			return -EBUSY;
	return 0;
}