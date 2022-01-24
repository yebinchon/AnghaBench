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
struct mdp_info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DL0_ROI_DONE ; 
 int /*<<< orphan*/  mdp_ppp_waitqueue ; 
 int FUNC0 (struct mdp_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC1(struct mdp_info *mdp)
{
	return FUNC0(mdp, DL0_ROI_DONE, &mdp_ppp_waitqueue);
}