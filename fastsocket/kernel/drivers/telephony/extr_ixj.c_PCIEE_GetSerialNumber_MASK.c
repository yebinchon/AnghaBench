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

/* Variables and functions */
 scalar_t__ FUNC0 (int,int,int*) ; 

__attribute__((used)) static DWORD FUNC1(WORD wAddress)
{
	WORD wLo, wHi;
	if (FUNC0(wAddress, 62, &wLo))
		return 0;
	if (FUNC0(wAddress, 63, &wHi))
		return 0;
	return (((DWORD) wHi << 16) | wLo);
}