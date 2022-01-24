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
struct vm_area_struct {struct anon_vma* anon_vma; } ;
struct page {scalar_t__ index; struct address_space* mapping; } ;
struct anon_vma {int dummy; } ;
struct address_space {int dummy; } ;

/* Variables and functions */
 int PAGE_MAPPING_ANON ; 
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (struct vm_area_struct*,unsigned long) ; 

void FUNC3(struct page *page,
	struct vm_area_struct *vma, unsigned long address)
{
	struct anon_vma *anon_vma = vma->anon_vma;

	FUNC1(!FUNC0(page));
	FUNC1(!anon_vma);
	FUNC1(page->index != FUNC2(vma, address));

	anon_vma = (void *) anon_vma + PAGE_MAPPING_ANON;
	page->mapping = (struct address_space *) anon_vma;
}