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
struct TYPE_3__ {int state; } ;
struct TYPE_4__ {TYPE_1__ phy; } ;
struct uea_softc {TYPE_2__ stats; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int ENODEV ; 
 struct uea_softc* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (char*,int,char*,int) ; 
 int /*<<< orphan*/  uea_mutex ; 

__attribute__((used)) static ssize_t FUNC4(struct device *dev, struct device_attribute *attr,
		char *buf)
{
	int ret = -ENODEV;
	struct uea_softc *sc;

	FUNC1(&uea_mutex);
	sc = FUNC0(dev);
	if (!sc)
		goto out;
	ret = FUNC3(buf, 10, "%08x\n", sc->stats.phy.state);
out:
	FUNC2(&uea_mutex);
	return ret;
}