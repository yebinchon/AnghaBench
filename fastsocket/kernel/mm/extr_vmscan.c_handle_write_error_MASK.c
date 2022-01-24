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
struct address_space {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 int /*<<< orphan*/  FUNC1 (struct address_space*,int) ; 
 struct address_space* FUNC2 (struct page*) ; 
 int /*<<< orphan*/  FUNC3 (struct page*) ; 

__attribute__((used)) static void FUNC4(struct address_space *mapping,
				struct page *page, int error)
{
	FUNC0(page);
	if (FUNC2(page) == mapping)
		FUNC1(mapping, error);
	FUNC3(page);
}