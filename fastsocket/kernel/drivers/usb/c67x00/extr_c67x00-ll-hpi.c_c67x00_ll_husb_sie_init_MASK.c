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
struct c67x00_sie {int /*<<< orphan*/  sie_num; struct c67x00_device* dev; } ;
struct c67x00_lcp_int_data {int dummy; } ;
struct c67x00_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct c67x00_device*,int /*<<< orphan*/ ,struct c67x00_lcp_int_data*) ; 

__attribute__((used)) static inline void FUNC3(struct c67x00_sie *sie)
{
	struct c67x00_device *dev = sie->dev;
	struct c67x00_lcp_int_data data;
	int rc;

	rc = FUNC2(dev, FUNC1(sie->sie_num), &data);
	FUNC0(rc); /* No return path for error code; crash spectacularly */
}