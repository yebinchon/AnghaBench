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

/* Variables and functions */
#define  DEVICE_CRT 130 
#define  DEVICE_DVI 129 
#define  DEVICE_LCD 128 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 

void FUNC3(int device, int set_iga, int output_interface)
{
	switch (device) {
	case DEVICE_CRT:
		FUNC0(set_iga);
		break;
	case DEVICE_DVI:
		FUNC1(set_iga, output_interface);
		break;
	case DEVICE_LCD:
		FUNC2(set_iga, output_interface);
		break;
	}
}