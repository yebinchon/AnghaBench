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
typedef  int u32 ;
struct usb_ftdi {int dummy; } ;

/* Variables and functions */
 int ENXIO ; 
 int FUNC0 (struct usb_ftdi*,int*) ; 
 int FUNC1 (struct usb_ftdi*,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static int FUNC3(struct usb_ftdi *ftdi)
{
        u32 controlreg;
        u8 sensebits;
        int UxxxStatus;
        UxxxStatus = FUNC0(ftdi, &controlreg);
        if (UxxxStatus)
                return UxxxStatus;
        UxxxStatus = FUNC1(ftdi, 0x00000000L);
        if (UxxxStatus)
                return UxxxStatus;
        FUNC2(750);
        UxxxStatus = FUNC1(ftdi, 0x00000200L | 0x100);
        if (UxxxStatus)
                return UxxxStatus;
        UxxxStatus = FUNC1(ftdi, 0x00000200L | 0x500);
        if (UxxxStatus)
                return UxxxStatus;
        UxxxStatus = FUNC0(ftdi, &controlreg);
        if (UxxxStatus)
                return UxxxStatus;
        UxxxStatus = FUNC1(ftdi, 0x0000020CL | 0x000);
        if (UxxxStatus)
                return UxxxStatus;
        UxxxStatus = FUNC1(ftdi, 0x0000020DL | 0x000);
        if (UxxxStatus)
                return UxxxStatus;
        FUNC2(250);
        UxxxStatus = FUNC1(ftdi, 0x0000020FL | 0x000);
        if (UxxxStatus)
                return UxxxStatus;
        UxxxStatus = FUNC0(ftdi, &controlreg);
        if (UxxxStatus)
                return UxxxStatus;
        UxxxStatus = FUNC1(ftdi, 0x0000025FL | 0x800);
        if (UxxxStatus)
                return UxxxStatus;
        UxxxStatus = FUNC0(ftdi, &controlreg);
        if (UxxxStatus)
                return UxxxStatus;
        UxxxStatus = FUNC0(ftdi, &controlreg);
        if (UxxxStatus)
                return UxxxStatus;
        FUNC2(1000);
        sensebits = (controlreg >> 16) & 0x000F;
        if (0x0D == sensebits)
                return 0;
        else
		return - ENXIO;
}