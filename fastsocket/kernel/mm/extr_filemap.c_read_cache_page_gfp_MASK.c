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
struct page {int dummy; } ;
struct address_space {TYPE_1__* a_ops; } ;
typedef  int /*<<< orphan*/  pgoff_t ;
typedef  int /*<<< orphan*/  gfp_t ;
typedef  int /*<<< orphan*/  filler_t ;
struct TYPE_2__ {scalar_t__ readpage; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct address_space*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct page* FUNC1 (int /*<<< orphan*/ ) ; 

struct page *FUNC2(struct address_space *mapping,
				pgoff_t index,
				gfp_t gfp)
{
	filler_t *filler = (filler_t *)mapping->a_ops->readpage;

	return FUNC1(FUNC0(mapping, index, filler, NULL, gfp));
}