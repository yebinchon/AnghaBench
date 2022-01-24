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
struct address_space {int dummy; } ;
typedef  int loff_t ;

/* Variables and functions */
 int PAGE_CACHE_SHIFT ; 
 int FUNC0 (struct address_space*,int,int) ; 

int FUNC1(struct address_space *mapping, loff_t start,
			    loff_t end)
{
	return FUNC0(mapping, start >> PAGE_CACHE_SHIFT,
					    end >> PAGE_CACHE_SHIFT);
}