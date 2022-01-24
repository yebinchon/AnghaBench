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
struct vm_area_struct {int dummy; } ;
struct page {int dummy; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int /*<<< orphan*/  HPAGE_PMD_ORDER ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 struct page* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct vm_area_struct*,unsigned long,int) ; 

__attribute__((used)) static inline struct page *FUNC2(int defrag,
					      struct vm_area_struct *vma,
					      unsigned long haddr, int nd,
					      gfp_t extra_gfp)
{
	return FUNC1(FUNC0(defrag, extra_gfp),
			       HPAGE_PMD_ORDER, vma, haddr, nd);
}