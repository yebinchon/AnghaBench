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
struct gfs2_sbd {int /*<<< orphan*/  sd_flags; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  SDF_SHUTDOWN ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,char*,unsigned int) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static ssize_t FUNC2(struct gfs2_sbd *sdp, char *buf)
{
	unsigned int b = FUNC1(SDF_SHUTDOWN, &sdp->sd_flags);
	return FUNC0(buf, PAGE_SIZE, "%u\n", b);
}