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
struct page {int dummy; } ;
typedef  int /*<<< orphan*/  pgprot_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned long,unsigned long) ; 
 int FUNC1 (unsigned long,unsigned long,int /*<<< orphan*/ ,struct page**) ; 

__attribute__((used)) static int FUNC2(unsigned long start, unsigned long end,
			   pgprot_t prot, struct page **pages)
{
	int ret;

	ret = FUNC1(start, end, prot, pages);
	FUNC0(start, end);
	return ret;
}