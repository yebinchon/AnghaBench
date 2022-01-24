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
struct snd_usb_substream {int /*<<< orphan*/  sync_endpoint; int /*<<< orphan*/  data_endpoint; int /*<<< orphan*/  altset_idx; int /*<<< orphan*/  interface; scalar_t__ running; } ;
struct snd_info_buffer {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct snd_usb_substream*,int /*<<< orphan*/ ,struct snd_info_buffer*) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_info_buffer*,char*,...) ; 

__attribute__((used)) static void FUNC2(struct snd_usb_substream *subs, struct snd_info_buffer *buffer)
{
	if (subs->running) {
		FUNC1(buffer, "  Status: Running\n");
		FUNC1(buffer, "    Interface = %d\n", subs->interface);
		FUNC1(buffer, "    Altset = %d\n", subs->altset_idx);
		FUNC0(subs, subs->data_endpoint, buffer);
		FUNC0(subs, subs->sync_endpoint, buffer);
	} else {
		FUNC1(buffer, "  Status: Stop\n");
	}
}