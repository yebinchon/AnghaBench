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
struct wusbhc {struct device* dev; } ;
struct wusb_dn_hdr {int bType; } ;
struct wusb_dev {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
#define  WUSB_DN_ALIVE 134 
#define  WUSB_DN_CONNECT 133 
#define  WUSB_DN_DISCONNECT 132 
#define  WUSB_DN_EPRDY 131 
#define  WUSB_DN_MASAVAILCHANGED 130 
#define  WUSB_DN_RWAKE 129 
#define  WUSB_DN_SLEEP 128 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,int,int,int /*<<< orphan*/ ) ; 
 struct wusb_dev* FUNC3 (struct wusbhc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct wusbhc*,struct wusb_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct wusbhc*,struct wusb_dn_hdr*,size_t) ; 
 int /*<<< orphan*/  FUNC6 (struct wusbhc*,struct wusb_dev*) ; 

void FUNC7(struct wusbhc *wusbhc, u8 srcaddr,
		      struct wusb_dn_hdr *dn_hdr, size_t size)
{
	struct device *dev = wusbhc->dev;
	struct wusb_dev *wusb_dev;

	if (size < sizeof(struct wusb_dn_hdr)) {
		FUNC1(dev, "DN data shorter than DN header (%d < %d)\n",
			(int)size, (int)sizeof(struct wusb_dn_hdr));
		return;
	}

	wusb_dev = FUNC3(wusbhc, srcaddr);
	if (wusb_dev == NULL && dn_hdr->bType != WUSB_DN_CONNECT) {
		FUNC0(dev, "ignoring DN %d from unconnected device %02x\n",
			dn_hdr->bType, srcaddr);
		return;
	}

	switch (dn_hdr->bType) {
	case WUSB_DN_CONNECT:
		FUNC5(wusbhc, dn_hdr, size);
		break;
	case WUSB_DN_ALIVE:
		FUNC4(wusbhc, wusb_dev);
		break;
	case WUSB_DN_DISCONNECT:
		FUNC6(wusbhc, wusb_dev);
		break;
	case WUSB_DN_MASAVAILCHANGED:
	case WUSB_DN_RWAKE:
	case WUSB_DN_SLEEP:
		/* FIXME: handle these DNs. */
		break;
	case WUSB_DN_EPRDY:
		/* The hardware handles these. */
		break;
	default:
		FUNC2(dev, "unknown DN %u (%d octets) from %u\n",
			 dn_hdr->bType, (int)size, srcaddr);
	}
}