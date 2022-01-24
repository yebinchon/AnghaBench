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
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static BYTE FUNC3(WORD wEEPROMAddress, BYTE lastLCC)
{
	FUNC1(1);
	lastLCC = lastLCC | 0x01;
	FUNC2(lastLCC, wEEPROMAddress);	/*SK rising edge */

	lastLCC = lastLCC & 0xfe;
	FUNC1(1);
	FUNC2(lastLCC, wEEPROMAddress);	/*after delay, SK falling edge */

	return ((FUNC0(wEEPROMAddress) >> 3) & 1);
}