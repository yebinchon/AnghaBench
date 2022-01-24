#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct usb_hcd {int dummy; } ;
struct urb {TYPE_1__* dev; int /*<<< orphan*/  pipe; } ;
struct oxu_hcd {int dummy; } ;
struct list_head {int dummy; } ;
typedef  int /*<<< orphan*/  gfp_t ;
struct TYPE_2__ {int /*<<< orphan*/  speed; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (struct list_head*) ; 
#define  PIPE_BULK 131 
#define  PIPE_CONTROL 130 
#define  PIPE_INTERRUPT 129 
#define  PIPE_ISOCHRONOUS 128 
 int /*<<< orphan*/  USB_SPEED_HIGH ; 
 struct oxu_hcd* FUNC1 (struct usb_hcd*) ; 
 int FUNC2 (struct oxu_hcd*,struct urb*,struct list_head*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct oxu_hcd*,struct urb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct oxu_hcd*,struct urb*,struct list_head*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct oxu_hcd*,struct urb*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct oxu_hcd*,struct urb*,struct list_head*,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct usb_hcd *hcd, struct urb *urb,
				gfp_t mem_flags)
{
	struct oxu_hcd *oxu = FUNC1(hcd);
	struct list_head qtd_list;

	FUNC0(&qtd_list);

	switch (FUNC7(urb->pipe)) {
	case PIPE_CONTROL:
	case PIPE_BULK:
	default:
		if (!FUNC4(oxu, urb, &qtd_list, mem_flags))
			return -ENOMEM;
		return FUNC6(oxu, urb, &qtd_list, mem_flags);

	case PIPE_INTERRUPT:
		if (!FUNC4(oxu, urb, &qtd_list, mem_flags))
			return -ENOMEM;
		return FUNC2(oxu, urb, &qtd_list, mem_flags);

	case PIPE_ISOCHRONOUS:
		if (urb->dev->speed == USB_SPEED_HIGH)
			return FUNC3(oxu, urb, mem_flags);
		else
			return FUNC5(oxu, urb, mem_flags);
	}
}