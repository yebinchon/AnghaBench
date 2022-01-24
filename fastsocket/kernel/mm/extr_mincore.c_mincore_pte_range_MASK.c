#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  val; } ;
typedef  TYPE_2__ swp_entry_t ;
struct vm_area_struct {TYPE_1__* vm_file; int /*<<< orphan*/  vm_mm; } ;
typedef  int /*<<< orphan*/  spinlock_t ;
typedef  int /*<<< orphan*/  pte_t ;
typedef  int /*<<< orphan*/  pmd_t ;
typedef  int /*<<< orphan*/  pgoff_t ;
struct TYPE_5__ {int /*<<< orphan*/ * f_mapping; } ;

/* Variables and functions */
 unsigned long PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (TYPE_2__) ; 
 unsigned char FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct vm_area_struct*,unsigned long,unsigned long,unsigned char*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,unsigned long,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 TYPE_2__ FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  swapper_space ; 

__attribute__((used)) static void FUNC11(struct vm_area_struct *vma, pmd_t *pmd,
			unsigned long addr, unsigned long end,
			unsigned char *vec)
{
	unsigned long next;
	spinlock_t *ptl;
	pte_t *ptep;

	ptep = FUNC6(vma->vm_mm, pmd, addr, &ptl);
	do {
		pte_t pte = *ptep;
		pgoff_t pgoff;

		next = addr + PAGE_SIZE;
		if (FUNC5(pte))
			FUNC3(vma, addr, next, vec);
		else if (FUNC7(pte))
			*vec = 1;
		else if (FUNC4(pte)) {
			pgoff = FUNC8(pte);
			*vec = FUNC2(vma->vm_file->f_mapping, pgoff);
		} else { /* pte is a swap entry */
			swp_entry_t entry = FUNC9(pte);

			if (FUNC1(entry)) {
				/* migration entries are always uptodate */
				*vec = 1;
			} else {
#ifdef CONFIG_SWAP
				pgoff = entry.val;
				*vec = mincore_page(&swapper_space, pgoff);
#else
				FUNC0(1);
				*vec = 1;
#endif
			}
		}
		vec++;
	} while (ptep++, addr = next, addr != end);
	FUNC10(ptep - 1, ptl);
}