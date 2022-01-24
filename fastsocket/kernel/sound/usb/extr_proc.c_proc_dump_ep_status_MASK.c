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
struct snd_usb_substream {int /*<<< orphan*/  dev; } ;
struct snd_usb_endpoint {int freqm; int freqshift; int syncmaxsize; int /*<<< orphan*/  curpacksize; } ;
struct snd_info_buffer {int dummy; } ;

/* Variables and functions */
 int INT_MIN ; 
 scalar_t__ USB_SPEED_FULL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_info_buffer*,char*,int,...) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct snd_usb_substream *subs,
				struct snd_usb_endpoint *ep,
				struct snd_info_buffer *buffer)
{
	if (!ep)
		return;
	FUNC2(buffer, "    Packet Size = %d\n", ep->curpacksize);
	FUNC2(buffer, "    Momentary freq = %u Hz (%#x.%04x)\n",
		    FUNC3(subs->dev) == USB_SPEED_FULL
		    ? FUNC0(ep->freqm)
		    : FUNC1(ep->freqm),
		    ep->freqm >> 16, ep->freqm & 0xffff);
	if (ep->freqshift != INT_MIN) {
		int res = 16 - ep->freqshift;
		FUNC2(buffer, "    Feedback Format = %d.%d\n",
			    (ep->syncmaxsize > 3 ? 32 : 24) - res, res);
	}
}