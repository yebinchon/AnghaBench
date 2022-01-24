#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct upid {int nr; TYPE_1__* ns; } ;
struct pidmap {int /*<<< orphan*/  nr_free; int /*<<< orphan*/  page; } ;
struct TYPE_2__ {struct pidmap* pidmap; } ;

/* Variables and functions */
 int BITS_PER_PAGE ; 
 int BITS_PER_PAGE_MASK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct upid *upid)
{
	int nr = upid->nr;
	struct pidmap *map = upid->ns->pidmap + nr / BITS_PER_PAGE;
	int offset = nr & BITS_PER_PAGE_MASK;

	FUNC1(offset, map->page);
	FUNC0(&map->nr_free);
}