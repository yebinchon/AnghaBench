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
struct video_device {int dummy; } ;
struct go7007 {scalar_t__ ref_count; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct go7007*) ; 
 int /*<<< orphan*/  FUNC1 (struct video_device*) ; 
 struct go7007* FUNC2 (struct video_device*) ; 

__attribute__((used)) static void FUNC3(struct video_device *vfd)
{
	struct go7007 *go = FUNC2(vfd);

	FUNC1(vfd);
	if (--go->ref_count == 0)
		FUNC0(go);
}