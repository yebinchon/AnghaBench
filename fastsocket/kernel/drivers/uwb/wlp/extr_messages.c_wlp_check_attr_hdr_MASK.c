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
struct wlp_attr_hdr {int /*<<< orphan*/  length; int /*<<< orphan*/  type; } ;
struct wlp {TYPE_2__* rc; } ;
struct device {int dummy; } ;
typedef  enum wlp_attr_type { ____Placeholder_wlp_attr_type } wlp_attr_type ;
struct TYPE_3__ {struct device dev; } ;
struct TYPE_4__ {TYPE_1__ uwb_dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,unsigned int,unsigned int) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct wlp *wlp, struct wlp_attr_hdr *hdr,
		       enum wlp_attr_type type, unsigned len)
{
	struct device *dev = &wlp->rc->uwb_dev.dev;

	if (FUNC1(hdr->type) != type) {
		FUNC0(dev, "WLP: unexpected header type. Expected "
			"%u, got %u.\n", type, FUNC1(hdr->type));
		return -EINVAL;
	}
	if (FUNC1(hdr->length) != len) {
		FUNC0(dev, "WLP: unexpected length in header. Expected "
			"%u, got %u.\n", len, FUNC1(hdr->length));
		return -EINVAL;
	}
	return 0;
}