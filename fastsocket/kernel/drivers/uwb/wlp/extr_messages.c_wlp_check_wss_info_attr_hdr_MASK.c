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
struct TYPE_3__ {struct device dev; } ;
struct TYPE_4__ {TYPE_1__ uwb_dev; } ;

/* Variables and functions */
 int EIO ; 
 int ENODATA ; 
 size_t WLP_ATTR_WSS_INFO ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,...) ; 
 size_t FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct wlp *wlp,
				       struct wlp_attr_hdr *hdr, size_t buflen)
{
	struct device *dev = &wlp->rc->uwb_dev.dev;
	size_t len;
	int result = 0;

	if (buflen < sizeof(*hdr)) {
		FUNC0(dev, "WLP: Not enough space in buffer to parse"
			" WSS information attribute header.\n");
		result = -EIO;
		goto out;
	}
	if (FUNC1(hdr->type) != WLP_ATTR_WSS_INFO) {
		/* WSS information is optional */
		result = -ENODATA;
		goto out;
	}
	len = FUNC1(hdr->length);
	if (buflen < sizeof(*hdr) + len) {
		FUNC0(dev, "WLP: Not enough space in buffer to parse "
			"variable data. Got %d, expected %d.\n",
			(int)buflen, (int)(sizeof(*hdr) + len));
		result = -EIO;
		goto out;
	}
	result = len;
out:
	return result;
}