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
struct usba_ep {int dummy; } ;
struct usb_ep {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BYTE_COUNT ; 
 int /*<<< orphan*/  STA ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct usba_ep* FUNC1 (struct usb_ep*) ; 
 int /*<<< orphan*/  FUNC2 (struct usba_ep*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct usb_ep *_ep)
{
	struct usba_ep *ep = FUNC1(_ep);

	return FUNC0(BYTE_COUNT, FUNC2(ep, STA));
}