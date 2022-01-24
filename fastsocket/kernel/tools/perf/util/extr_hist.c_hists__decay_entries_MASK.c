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
struct hists {int dummy; } ;

/* Variables and functions */
 void FUNC0 (struct hists*,int,int,int) ; 

void FUNC1(struct hists *hists, bool zap_user, bool zap_kernel)
{
	return FUNC0(hists, zap_user, zap_kernel, false);
}