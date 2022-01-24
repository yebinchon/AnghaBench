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
typedef  int u64 ;
struct dccp_hdr_ack_bits {int /*<<< orphan*/  dccph_ack_nr_low; int /*<<< orphan*/  dccph_ack_nr_high; } ;
struct dccp_hdr {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct dccp_hdr const*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static u64 FUNC3(const struct dccp_hdr *dh)
{
	const struct dccp_hdr_ack_bits *dhack;

	dhack = (void *)dh + FUNC0(dh);
	return ((u64)FUNC2(dhack->dccph_ack_nr_high) << 32) +
		     FUNC1(dhack->dccph_ack_nr_low);
}