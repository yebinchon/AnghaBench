#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ ep0_txrx_len; scalar_t__ ep0_txrx_pos; int /*<<< orphan*/  ep0_txrx_buffer; } ;
struct TYPE_4__ {TYPE_1__ usb; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 TYPE_2__ fw ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 

void FUNC2(void)
{
	if (FUNC0(!fw.usb.ep0_txrx_buffer || !fw.usb.ep0_txrx_len))
		return ;

	FUNC1(fw.usb.ep0_txrx_buffer, fw.usb.ep0_txrx_len);
	fw.usb.ep0_txrx_pos = fw.usb.ep0_txrx_len;
}