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
struct wlp_wss_info {int dummy; } ;
struct wlp_wss {int /*<<< orphan*/  bcast; int /*<<< orphan*/  secure_status; int /*<<< orphan*/  accept_enroll; int /*<<< orphan*/  name; int /*<<< orphan*/  wssid; } ;
struct wlp_attr_wss_info {int /*<<< orphan*/  hdr; void* wss_info; } ;

/* Variables and functions */
 int /*<<< orphan*/  WLP_ATTR_WSS_INFO ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,size_t) ; 
 scalar_t__ FUNC3 (void*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (void*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC5 (void*,int /*<<< orphan*/ ) ; 
 size_t FUNC6 (void*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static size_t FUNC7(struct wlp_attr_wss_info *attr,
			       struct wlp_wss *wss)
{
	size_t datalen;
	void *ptr = attr->wss_info;
	size_t used = sizeof(*attr);

	datalen = sizeof(struct wlp_wss_info) + FUNC0(wss->name);
	FUNC2(&attr->hdr, WLP_ATTR_WSS_INFO, datalen);
	used = FUNC6(ptr, &wss->wssid);
	used += FUNC4(ptr + used, wss->name, FUNC0(wss->name));
	used += FUNC1(ptr + used, wss->accept_enroll);
	used += FUNC5(ptr + used, wss->secure_status);
	used += FUNC3(ptr + used, &wss->bcast);
	return sizeof(*attr) + used;
}