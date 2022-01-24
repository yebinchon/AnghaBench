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
struct wusbhc {unsigned int mmcies_max; int (* mmcie_rm ) (struct wusbhc*,unsigned int) ;int /*<<< orphan*/  mmcie_mutex; struct wuie_hdr** mmcie; } ;
struct wuie_hdr {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct wusbhc*,unsigned int) ; 

void FUNC3(struct wusbhc *wusbhc, struct wuie_hdr *wuie)
{
	int result;
	unsigned handle, itr;

	FUNC0(&wusbhc->mmcie_mutex);
	for (itr = 0; itr < wusbhc->mmcies_max; itr++) {
		if (wusbhc->mmcie[itr] == wuie) {
			handle = itr;
			goto found;
		}
	}
	FUNC1(&wusbhc->mmcie_mutex);
	return;

found:
	result = (wusbhc->mmcie_rm)(wusbhc, handle);
	if (result == 0)
		wusbhc->mmcie[itr] = NULL;
	FUNC1(&wusbhc->mmcie_mutex);
}