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
struct msm_adsp_module {int /*<<< orphan*/  pmem_regions_lock; int /*<<< orphan*/  pmem_regions; } ;
struct file {int dummy; } ;
struct adsp_pmem_region {unsigned long paddr; unsigned long kvaddr; unsigned long len; int /*<<< orphan*/  list; struct file* file; int /*<<< orphan*/  vaddr; } ;
struct adsp_pmem_info {int /*<<< orphan*/  vaddr; int /*<<< orphan*/  fd; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (struct msm_adsp_module*,int /*<<< orphan*/ ,unsigned long) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,unsigned long*,unsigned long*,unsigned long*,struct file**) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct adsp_pmem_region*) ; 
 struct adsp_pmem_region* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct file*) ; 

__attribute__((used)) static int FUNC9(struct msm_adsp_module *module,
			 struct adsp_pmem_info *info)
{
	unsigned long paddr, kvaddr, len;
	struct file *file;
	struct adsp_pmem_region *region;
	int rc = -EINVAL;

	FUNC6(&module->pmem_regions_lock);
	region = FUNC5(sizeof(*region), GFP_KERNEL);
	if (!region) {
		rc = -ENOMEM;
		goto end;
	}
	FUNC0(&region->list);
	if (FUNC2(info->fd, &paddr, &kvaddr, &len, &file)) {
		FUNC4(region);
		goto end;
	}

	rc = FUNC1(module, info->vaddr, len);
	if (rc < 0) {
		FUNC8(file);
		FUNC4(region);
		goto end;
	}

	region->vaddr = info->vaddr;
	region->paddr = paddr;
	region->kvaddr = kvaddr;
	region->len = len;
	region->file = file;

	FUNC3(&region->list, &module->pmem_regions);
end:
	FUNC7(&module->pmem_regions_lock);
	return rc;
}