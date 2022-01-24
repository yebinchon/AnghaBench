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
typedef  int WORD ;
typedef  int DWORD ;
typedef  int BYTE ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int,int,int) ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 

__attribute__((used)) static bool FUNC5(WORD wAddress, WORD wLoc, WORD * pwResult)
{
	BYTE lastLCC;
	WORD wEEPROMAddress = wAddress + 3;
	DWORD i;
	BYTE byResult;
	*pwResult = 0;
	lastLCC = FUNC2(wEEPROMAddress);
	lastLCC = lastLCC | 0x02;
	lastLCC = lastLCC & 0xfe;
	FUNC4(lastLCC, wEEPROMAddress);	/* CS hi, SK lo */

	FUNC3(1);		/* delay */

	FUNC1(wEEPROMAddress, lastLCC, 1);
	FUNC1(wEEPROMAddress, lastLCC, 1);
	FUNC1(wEEPROMAddress, lastLCC, 0);
	for (i = 0; i < 8; i++) {
		FUNC1(wEEPROMAddress, lastLCC, wLoc & 0x80 ? 1 : 0);
		wLoc <<= 1;
	}

	for (i = 0; i < 16; i++) {
		byResult = FUNC0(wEEPROMAddress, lastLCC);
		*pwResult = (*pwResult << 1) | byResult;
	}

	FUNC3(1);		/* another delay */

	lastLCC = lastLCC & 0xfd;
	FUNC4(lastLCC, wEEPROMAddress);	/* negate CS */

	return 0;
}