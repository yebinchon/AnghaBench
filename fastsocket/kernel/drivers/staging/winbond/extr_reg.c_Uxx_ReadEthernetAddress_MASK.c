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
typedef  scalar_t__ u32 ;
typedef  scalar_t__ u16 ;
struct hw_data {scalar_t__ PermanentMacAddress; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct hw_data*,int,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC1 (struct hw_data*,int,int) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int FUNC3 (scalar_t__) ; 

void
FUNC4(  struct hw_data * pHwData )
{
	u32	ltmp;

	// Reading Ethernet address from EEPROM and set into hardware due to MAC address maybe change.
	// Only unplug and plug again can make hardware read EEPROM again. 20060727
	FUNC1( pHwData, 0x03b4, 0x08000000 ); // Start EEPROM access + Read + address(0x0d)
	FUNC0( pHwData, 0x03b4, &ltmp );
	*(u16 *)pHwData->PermanentMacAddress = FUNC2((u16)ltmp); //20060926 anson's endian
	FUNC1( pHwData, 0x03b4, 0x08010000 ); // Start EEPROM access + Read + address(0x0d)
	FUNC0( pHwData, 0x03b4, &ltmp );
	*(u16 *)(pHwData->PermanentMacAddress + 2) = FUNC2((u16)ltmp); //20060926 anson's endian
	FUNC1( pHwData, 0x03b4, 0x08020000 ); // Start EEPROM access + Read + address(0x0d)
	FUNC0( pHwData, 0x03b4, &ltmp );
	*(u16 *)(pHwData->PermanentMacAddress + 4) = FUNC2((u16)ltmp); //20060926 anson's endian
	*(u16 *)(pHwData->PermanentMacAddress + 6) = 0;
	FUNC1( pHwData, 0x03e8, FUNC3(*(u32 *)pHwData->PermanentMacAddress) ); //20060926 anson's endian
	FUNC1( pHwData, 0x03ec, FUNC3(*(u32 *)(pHwData->PermanentMacAddress+4)) ); //20060926 anson's endian
}