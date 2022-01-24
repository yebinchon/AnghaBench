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
struct s3c_hsotg_req {int dummy; } ;
struct s3c_hsotg_ep {int /*<<< orphan*/  lock; } ;
struct s3c_hsotg {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct s3c_hsotg*,struct s3c_hsotg_ep*,struct s3c_hsotg_req*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC3(struct s3c_hsotg *hsotg,
					    struct s3c_hsotg_ep *hs_ep,
					    struct s3c_hsotg_req *hs_req,
					    int result)
{
	unsigned long flags;

	FUNC1(&hs_ep->lock, flags);
	FUNC0(hsotg, hs_ep, hs_req, result);
	FUNC2(&hs_ep->lock, flags);
}