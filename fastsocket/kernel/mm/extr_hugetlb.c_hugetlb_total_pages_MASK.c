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
struct hstate {unsigned long nr_huge_pages; } ;

/* Variables and functions */
 struct hstate default_hstate ; 
 unsigned long FUNC0 (struct hstate*) ; 

unsigned long FUNC1(void)
{
	struct hstate *h = &default_hstate;
	return h->nr_huge_pages * FUNC0(h);
}