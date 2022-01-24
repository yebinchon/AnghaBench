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
typedef  int /*<<< orphan*/  WORD ;
typedef  int BYTE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(WORD wEEPROMAddress, BYTE lastLCC, BYTE byData)
{
	lastLCC = lastLCC & 0xfb;
	lastLCC = lastLCC | (byData ? 4 : 0);
	FUNC1(lastLCC, wEEPROMAddress);	/*set data out bit as appropriate */

	FUNC0(1);
	lastLCC = lastLCC | 0x01;
	FUNC1(lastLCC, wEEPROMAddress);	/*SK rising edge */

	byData = byData << 1;
	lastLCC = lastLCC & 0xfe;
	FUNC0(1);
	FUNC1(lastLCC, wEEPROMAddress);	/*after delay, SK falling edge */

}