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
typedef  int /*<<< orphan*/  u8 ;
struct twl4030_usb {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  TWL4030_MODULE_USB ; 
 int FUNC0 (struct twl4030_usb*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline int FUNC1(struct twl4030_usb *twl, u8 address)
{
	return FUNC0(twl, TWL4030_MODULE_USB, address);
}