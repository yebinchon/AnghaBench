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
struct imx_request {scalar_t__ in_use; int /*<<< orphan*/  queue; } ;
struct imx_ep_struct {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int) ; 

__attribute__((used)) static void FUNC2(struct imx_ep_struct *imx_ep,
							struct imx_request *req)
{
	if (FUNC1(!req))
		return;

	FUNC0(&req->queue);
	req->in_use = 0;
}