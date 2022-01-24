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
struct virtio_balloon {scalar_t__ need_stats_update; int /*<<< orphan*/  config_change; } ;
typedef  int /*<<< orphan*/  s64 ;

/* Variables and functions */
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC0 (struct virtio_balloon*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct virtio_balloon*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct virtio_balloon*) ; 
 int /*<<< orphan*/  FUNC6 (struct virtio_balloon*) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (struct virtio_balloon*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC10(void *_vballoon)
{
	struct virtio_balloon *vb = _vballoon;

	FUNC4();
	while (!FUNC2()) {
		s64 diff;

		FUNC7();
		FUNC9(vb->config_change,
					 (diff = FUNC6(vb)) != 0
					 || vb->need_stats_update
					 || FUNC2()
					 || FUNC1(current));
		if (vb->need_stats_update)
			FUNC5(vb);
		if (diff > 0)
			FUNC0(vb, diff);
		else if (diff < 0)
			FUNC3(vb, -diff);
		FUNC8(vb);
	}
	return 0;
}