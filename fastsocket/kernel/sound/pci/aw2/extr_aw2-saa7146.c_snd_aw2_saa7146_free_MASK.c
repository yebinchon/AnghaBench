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
struct snd_aw2_saa7146 {int /*<<< orphan*/ * base_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  IER ; 
 int /*<<< orphan*/  MC1 ; 
 int MRST_N ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 

int FUNC1(struct snd_aw2_saa7146 *chip)
{
	/* disable all irqs */
	FUNC0(0, IER);

	/* reset saa7146 */
	FUNC0((MRST_N << 16), MC1);

	/* Unset base addr */
	chip->base_addr = NULL;

	return 0;
}