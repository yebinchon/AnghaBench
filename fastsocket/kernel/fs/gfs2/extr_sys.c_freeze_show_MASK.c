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
struct gfs2_sbd {unsigned int sd_freeze_count; int /*<<< orphan*/  sd_freeze_lock; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,char*,unsigned int) ; 

__attribute__((used)) static ssize_t FUNC3(struct gfs2_sbd *sdp, char *buf)
{
	unsigned int count;

	FUNC0(&sdp->sd_freeze_lock);
	count = sdp->sd_freeze_count;
	FUNC1(&sdp->sd_freeze_lock);

	return FUNC2(buf, PAGE_SIZE, "%u\n", count);
}