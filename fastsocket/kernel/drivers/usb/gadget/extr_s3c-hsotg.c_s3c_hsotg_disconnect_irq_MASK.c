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
struct s3c_hsotg {int /*<<< orphan*/ * eps; } ;

/* Variables and functions */
 int /*<<< orphan*/  ESHUTDOWN ; 
 unsigned int S3C_HSOTG_EPS ; 
 int /*<<< orphan*/  FUNC0 (struct s3c_hsotg*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  disconnect ; 
 int /*<<< orphan*/  FUNC1 (struct s3c_hsotg*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(struct s3c_hsotg *hsotg)
{
	unsigned ep;

	for (ep = 0; ep < S3C_HSOTG_EPS; ep++)
		FUNC1(hsotg, &hsotg->eps[ep], -ESHUTDOWN, true);

	FUNC0(hsotg, disconnect);
}