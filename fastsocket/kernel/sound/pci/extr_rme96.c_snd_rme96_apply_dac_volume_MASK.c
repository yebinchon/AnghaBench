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
struct rme96 {int* vol; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct rme96*) ; 
 scalar_t__ FUNC1 (struct rme96*) ; 
 int /*<<< orphan*/  FUNC2 (struct rme96*,int) ; 

__attribute__((used)) static void
FUNC3(struct rme96 *rme96)
{
	if (FUNC0(rme96)) {
		FUNC2(rme96, (rme96->vol[0] << 2) | 0x0);
		FUNC2(rme96, (rme96->vol[1] << 2) | 0x2);
	} else if (FUNC1(rme96)) {
		FUNC2(rme96, (rme96->vol[0] & 0x3FF) | 0x000);
		FUNC2(rme96, (rme96->vol[1] & 0x3FF) | 0x400);
	}
}