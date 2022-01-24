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
typedef  scalar_t__ u32 ;
struct tcf_hashinfo {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__,struct tcf_hashinfo*) ; 

u32 FUNC1(u32 *idx_gen, struct tcf_hashinfo *hinfo)
{
	u32 val = *idx_gen;

	do {
		if (++val == 0)
			val = 1;
	} while (FUNC0(val, hinfo));

	return (*idx_gen = val);
}