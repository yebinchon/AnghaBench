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
struct vm_area_struct {int /*<<< orphan*/  vm_end; int /*<<< orphan*/  vm_start; } ;
struct resv_map {int /*<<< orphan*/  regions; } ;
struct hugepage_subpool {int dummy; } ;
struct hstate {int dummy; } ;

/* Variables and functions */
 struct hstate* FUNC0 (struct vm_area_struct*) ; 
 int /*<<< orphan*/  FUNC1 (struct hugepage_subpool*,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (struct hstate*,unsigned long) ; 
 unsigned long FUNC3 (int /*<<< orphan*/ *,unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (struct vm_area_struct*) ; 
 struct hugepage_subpool* FUNC5 (struct vm_area_struct*) ; 
 unsigned long FUNC6 (struct hstate*,struct vm_area_struct*,int /*<<< orphan*/ ) ; 
 struct resv_map* FUNC7 (struct vm_area_struct*) ; 

__attribute__((used)) static void FUNC8(struct vm_area_struct *vma)
{
	struct hstate *h = FUNC0(vma);
	struct resv_map *reservations = FUNC7(vma);
	struct hugepage_subpool *spool = FUNC5(vma);
	unsigned long reserve;
	unsigned long start;
	unsigned long end;

	if (reservations) {
		start = FUNC6(h, vma, vma->vm_start);
		end = FUNC6(h, vma, vma->vm_end);

		reserve = (end - start) -
			FUNC3(&reservations->regions, start, end);
		FUNC4(vma);

		if (reserve) {
			FUNC2(h, -reserve);
			FUNC1(spool, reserve);
		}
	}
}