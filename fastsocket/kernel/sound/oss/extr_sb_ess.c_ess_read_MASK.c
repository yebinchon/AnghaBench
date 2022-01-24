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
typedef  int /*<<< orphan*/  sb_devc ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned char) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2 (sb_devc * devc, unsigned char reg)
{
	/* Read a byte from an extended mode register of ES1688 */

	/* Read register command */
	if (!FUNC0(devc, 0xc0)) return -1;

	if (!FUNC0(devc, reg )) return -1;

	return FUNC1(devc);
}