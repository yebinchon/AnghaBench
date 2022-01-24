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
typedef  int /*<<< orphan*/  beaddr ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct data FUNC1 (struct data,int /*<<< orphan*/ *,int) ; 

struct data FUNC2(struct data d, uint64_t addr)
{
	uint64_t beaddr = FUNC0(addr);

	return FUNC1(d, &beaddr, sizeof(beaddr));
}