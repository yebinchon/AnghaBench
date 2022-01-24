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
typedef  int /*<<< orphan*/  u32 ;
struct wusbhc {int dummy; } ;
struct whc {int /*<<< orphan*/  mutex; int /*<<< orphan*/  n_devices; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct whc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void const*,size_t,int) ; 
 struct whc* FUNC3 (struct wusbhc*) ; 

int FUNC4(struct wusbhc *wusbhc, u32 tkid,
		const void *gtk, size_t key_size)
{
	struct whc *whc = FUNC3(wusbhc);
	int ret;

	FUNC0(&whc->mutex);

	ret = FUNC2(whc, whc->n_devices, tkid, gtk, key_size, true);

	FUNC1(&whc->mutex);

	return ret;
}