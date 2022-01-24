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
struct vc_data {scalar_t__ vc_origin; scalar_t__ vc_visible_origin; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vc_data*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(struct vc_data *c)
{
	if (c->vc_origin != c->vc_visible_origin)
		FUNC0(c, 0);
}