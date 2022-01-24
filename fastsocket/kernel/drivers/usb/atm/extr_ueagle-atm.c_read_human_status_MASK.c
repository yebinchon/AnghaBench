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
 scalar_t__ EAGLE_IV ; 
 int ENODEV ; 
 int FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct uea_softc*) ; 
 struct uea_softc* FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (char*,char*) ; 
 int /*<<< orphan*/  uea_mutex ; 

__attribute__((used)) static ssize_t FUNC6(struct device *dev, struct device_attribute *attr,
		char *buf)
{
	int ret = -ENODEV;
	int modem_state;
	struct uea_softc *sc;

	FUNC3(&uea_mutex);
	sc = FUNC2(dev);
	if (!sc)
		goto out;

	if (FUNC1(sc) == EAGLE_IV) {
		switch (sc->stats.phy.state) {
		case 0x0:	/* not yet synchronized */
		case 0x1:
		case 0x3:
		case 0x4:
			modem_state = 0;
			break;
		case 0x5:	/* initialization */
		case 0x6:
		case 0x9:
		case 0xa:
			modem_state = 1;
			break;
		case 0x7: 	/* operational */
			modem_state = 2;
			break;
		case 0x2:	/* fail ... */
			modem_state = 3;
			break;
		default:	/* unknown */
			modem_state = 4;
			break;
		}
	} else
		modem_state = FUNC0(sc->stats.phy.state);

	switch (modem_state) {
	case 0:
		ret = FUNC5(buf, "Modem is booting\n");
		break;
	case 1:
		ret = FUNC5(buf, "Modem is initializing\n");
		break;
	case 2:
		ret = FUNC5(buf, "Modem is operational\n");
		break;
	case 3:
		ret = FUNC5(buf, "Modem synchronization failed\n");
		break;
	default:
		ret = FUNC5(buf, "Modem state is unknown\n");
		break;
	}
out:
	FUNC4(&uea_mutex);
	return ret;
}