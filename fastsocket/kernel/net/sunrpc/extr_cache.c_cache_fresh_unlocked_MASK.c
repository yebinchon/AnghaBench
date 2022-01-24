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
struct cache_head {int /*<<< orphan*/  flags; } ;
struct cache_detail {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CACHE_PENDING ; 
 int /*<<< orphan*/  FUNC0 (struct cache_detail*,struct cache_head*) ; 
 int /*<<< orphan*/  FUNC1 (struct cache_head*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct cache_head *head,
				 struct cache_detail *detail)
{
	if (FUNC2(CACHE_PENDING, &head->flags)) {
		FUNC1(head);
		FUNC0(detail, head);
	}
}