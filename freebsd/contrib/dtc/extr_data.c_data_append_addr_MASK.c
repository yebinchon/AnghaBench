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
typedef  int /*<<< orphan*/  uint64_t ;
struct data {int dummy; } ;
typedef  int /*<<< orphan*/  addr ;

/* Variables and functions */
 struct data FUNC0 (struct data,int /*<<< orphan*/ ,int) ; 

struct data FUNC1(struct data d, uint64_t addr)
{
	return FUNC0(d, addr, sizeof(addr) * 8);
}