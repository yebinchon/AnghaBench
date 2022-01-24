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
typedef  int /*<<< orphan*/  u16 ;
struct wlp_attr_hdr {int dummy; } ;
struct wlp {TYPE_2__* rc; } ;
struct device {int dummy; } ;
typedef  scalar_t__ ssize_t ;
struct TYPE_3__ {struct device dev; } ;
struct TYPE_4__ {TYPE_1__ uwb_dev; } ;

/* Variables and functions */
 scalar_t__ EINVAL ; 
 scalar_t__ EIO ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (void*,void*,scalar_t__) ; 
 scalar_t__ FUNC2 (struct wlp*,struct wlp_attr_hdr*,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static ssize_t FUNC3(struct wlp *wlp, u16 type_code,
	struct wlp_attr_hdr *attr_hdr, void *value, ssize_t value_len,
	ssize_t buflen)
{
	struct device *dev = &wlp->rc->uwb_dev.dev;
	ssize_t attr_len = sizeof(*attr_hdr) + value_len;
	if (buflen < 0)
		return -EINVAL;
	if (buflen < attr_len) {
		FUNC0(dev, "WLP: Not enough space in buffer to parse"
			" attribute field. Need %d, received %zu\n",
			(int)attr_len, buflen);
		return -EIO;
	}
	if (FUNC2(wlp, attr_hdr, type_code, value_len) < 0) {
		FUNC0(dev, "WLP: Header verification failed. \n");
		return -EINVAL;
	}
	FUNC1(value, (void *)attr_hdr + sizeof(*attr_hdr), value_len);
	return attr_len;
}