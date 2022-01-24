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
struct uwb_rc_evt_beacon {int wBeaconInfoLength; scalar_t__ BeaconInfo; } ;
struct uwb_ie_hdr {int dummy; } ;
struct uwb_dev {int dummy; } ;
struct uwb_beca_e {int /*<<< orphan*/  mutex; struct uwb_rc_evt_beacon* be; } ;
struct uwb_beacon_frame {scalar_t__ IEData; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct uwb_ie_hdr*,int,char*,size_t) ; 

ssize_t FUNC3(struct uwb_dev *uwb_dev, struct uwb_beca_e *bce,
			  char *buf, size_t size)
{
	ssize_t result = 0;
	struct uwb_rc_evt_beacon *be;
	struct uwb_beacon_frame *bf;
	int ies_len;
	struct uwb_ie_hdr *ies;

	FUNC0(&bce->mutex);

	be = bce->be;
	if (be) {
		bf = (struct uwb_beacon_frame *)bce->be->BeaconInfo;
		ies_len = be->wBeaconInfoLength - sizeof(struct uwb_beacon_frame);
		ies = (struct uwb_ie_hdr *)bf->IEData;

		result = FUNC2(ies, ies_len, buf, size);
	}

	FUNC1(&bce->mutex);

	return result;
}