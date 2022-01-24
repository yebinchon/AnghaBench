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
struct garmin_packet {int /*<<< orphan*/  size; int /*<<< orphan*/  data; } ;
struct garmin_data {int flags; int /*<<< orphan*/  lock; int /*<<< orphan*/  timer; int /*<<< orphan*/  port; } ;

/* Variables and functions */
 int FLAGS_QUEUING ; 
 int FLAGS_THROTTLED ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC0 (struct garmin_packet*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 
 struct garmin_packet* FUNC2 (struct garmin_data*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC6(struct garmin_data *garmin_data_p)
{
	unsigned long flags;
	struct garmin_packet *pkt;

	if ((garmin_data_p->flags & FLAGS_THROTTLED) == 0) {
		pkt = FUNC2(garmin_data_p);
		if (pkt != NULL) {
			FUNC3(garmin_data_p->port, pkt->data, pkt->size);
			FUNC0(pkt);
			FUNC1(&garmin_data_p->timer, (1)+jiffies);

		} else {
			FUNC4(&garmin_data_p->lock, flags);
			garmin_data_p->flags &= ~FLAGS_QUEUING;
			FUNC5(&garmin_data_p->lock, flags);
		}
	}
	return 0;
}