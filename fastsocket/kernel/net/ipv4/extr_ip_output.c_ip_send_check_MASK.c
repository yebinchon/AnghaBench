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
struct iphdr {int /*<<< orphan*/  ihl; scalar_t__ check; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (unsigned char*,int /*<<< orphan*/ ) ; 

__inline__ void FUNC1(struct iphdr *iph)
{
	iph->check = 0;
	iph->check = FUNC0((unsigned char *)iph, iph->ihl);
}