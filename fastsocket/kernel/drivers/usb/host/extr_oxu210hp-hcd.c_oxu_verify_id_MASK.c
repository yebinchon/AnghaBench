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
typedef  size_t u32 ;
struct platform_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 size_t OXU_BO_MASK ; 
 size_t OXU_BO_SHIFT ; 
 int /*<<< orphan*/  OXU_DEVICEID ; 
 size_t OXU_MAJ_REV_MASK ; 
 size_t OXU_MAJ_REV_SHIFT ; 
 size_t OXU_MIN_REV_MASK ; 
 size_t OXU_MIN_REV_SHIFT ; 
 size_t OXU_REV_2100 ; 
 size_t OXU_REV_MASK ; 
 size_t OXU_REV_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,size_t,...) ; 
 size_t FUNC1 (void*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct platform_device *pdev, void *base)
{
	u32 id;
	char *bo[] = {
		"reserved",
		"128-pin LQFP",
		"84-pin TFBGA",
		"reserved",
	};

	/* Read controller signature register to find a match */
	id = FUNC1(base, OXU_DEVICEID);
	FUNC0(&pdev->dev, "device ID %x\n", id);
	if ((id & OXU_REV_MASK) != (OXU_REV_2100 << OXU_REV_SHIFT))
		return -1;

	FUNC0(&pdev->dev, "found device %x %s (%04x:%04x)\n",
		id >> OXU_REV_SHIFT,
		bo[(id & OXU_BO_MASK) >> OXU_BO_SHIFT],
		(id & OXU_MAJ_REV_MASK) >> OXU_MAJ_REV_SHIFT,
		(id & OXU_MIN_REV_MASK) >> OXU_MIN_REV_SHIFT);

	return 0;
}