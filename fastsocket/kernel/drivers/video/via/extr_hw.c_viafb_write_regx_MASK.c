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
struct io_reg {unsigned char index; unsigned char mask; unsigned char value; scalar_t__ port; } ;

/* Variables and functions */
 unsigned char FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char,scalar_t__) ; 

void FUNC2(struct io_reg RegTable[], int ItemNum)
{
	int i;
	unsigned char RegTemp;

	/*DEBUG_MSG(KERN_INFO "Table Size : %x!!\n",ItemNum ); */

	for (i = 0; i < ItemNum; i++) {
		FUNC1(RegTable[i].index, RegTable[i].port);
		RegTemp = FUNC0(RegTable[i].port + 1);
		RegTemp = (RegTemp & (~RegTable[i].mask)) | RegTable[i].value;
		FUNC1(RegTemp, RegTable[i].port + 1);
	}
}