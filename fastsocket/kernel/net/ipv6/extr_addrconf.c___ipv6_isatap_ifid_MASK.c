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
typedef  int u8 ;
typedef  scalar_t__ __be32 ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 scalar_t__ FUNC7 (scalar_t__) ; 
 scalar_t__ FUNC8 (scalar_t__) ; 
 scalar_t__ FUNC9 (scalar_t__) ; 
 scalar_t__ FUNC10 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (int*,scalar_t__*,int) ; 

int FUNC12(u8 *eui, __be32 addr)
{
	if (addr == 0)
		return -1;
	eui[0] = (FUNC10(addr) || FUNC5(addr) ||
		  FUNC3(addr) || FUNC2(addr) ||
		  FUNC6(addr) || FUNC8(addr) ||
		  FUNC0(addr) || FUNC7(addr) ||
		  FUNC9(addr) || FUNC4(addr) ||
		  FUNC1(addr)) ? 0x00 : 0x02;
	eui[1] = 0;
	eui[2] = 0x5E;
	eui[3] = 0xFE;
	FUNC11(eui + 4, &addr, 4);
	return 0;
}