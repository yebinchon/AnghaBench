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
typedef  size_t u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct wusbhc {int dummy; } ;
struct whc {int /*<<< orphan*/  mutex; struct di_buf_entry* di_buf; } ;
struct di_buf_entry {int addr_sec_info; } ;

/* Variables and functions */
 int FUNC0 (size_t) ; 
 int WHC_DI_KEY_IDX_MASK ; 
 int WHC_DI_SECURE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct whc*,size_t,int /*<<< orphan*/ ,void const*,size_t,int) ; 
 int FUNC4 (struct whc*,size_t) ; 
 struct whc* FUNC5 (struct wusbhc*) ; 

int FUNC6(struct wusbhc *wusbhc, u8 port_idx, u32 tkid,
		const void *ptk, size_t key_size)
{
	struct whc *whc = FUNC5(wusbhc);
	struct di_buf_entry *di = &whc->di_buf[port_idx];
	int ret;

	FUNC1(&whc->mutex);

	if (ptk) {
		ret = FUNC3(whc, port_idx, tkid, ptk, key_size, false);
		if (ret)
			goto out;

		di->addr_sec_info &= ~WHC_DI_KEY_IDX_MASK;
		di->addr_sec_info |= WHC_DI_SECURE | FUNC0(port_idx);
	} else
		di->addr_sec_info &= ~WHC_DI_SECURE;

	ret = FUNC4(whc, port_idx);
out:
	FUNC2(&whc->mutex);
	return ret;
}