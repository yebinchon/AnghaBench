#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  sense_buffer; } ;
struct isd200_info {TYPE_1__ srb; int /*<<< orphan*/  RegsBuf; int /*<<< orphan*/  id; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(void *info_)
{
	struct isd200_info *info = (struct isd200_info *) info_;

	if (info) {
		FUNC0(info->id);
		FUNC0(info->RegsBuf);
		FUNC0(info->srb.sense_buffer);
	}
}