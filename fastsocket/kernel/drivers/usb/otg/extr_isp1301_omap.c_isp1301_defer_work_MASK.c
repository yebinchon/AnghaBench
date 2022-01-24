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
struct isp1301 {TYPE_1__* client; int /*<<< orphan*/  working; int /*<<< orphan*/  work; int /*<<< orphan*/  todo; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct isp1301 *isp, int work)
{
	int status;

	if (isp && !FUNC3(work, &isp->todo)) {
		(void) FUNC1(&isp->client->dev);
		status = FUNC2(&isp->work);
		if (!status && !isp->working)
			FUNC0(&isp->client->dev,
				"work item %d may be lost\n", work);
	}
}