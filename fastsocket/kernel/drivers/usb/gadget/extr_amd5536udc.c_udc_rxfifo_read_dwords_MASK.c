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
typedef  int /*<<< orphan*/  u32 ;
struct udc {int /*<<< orphan*/  rxfifo; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct udc*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct udc *dev, u32 *buf, int dwords)
{
	int i;

	FUNC0(dev, "udc_read_dwords(): %d dwords\n", dwords);

	for (i = 0; i < dwords; i++) {
		*(buf + i) = FUNC1(dev->rxfifo);
	}
	return 0;
}