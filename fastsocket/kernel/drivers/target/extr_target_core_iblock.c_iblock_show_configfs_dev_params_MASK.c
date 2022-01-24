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
struct se_device {int dummy; } ;
struct iblock_dev {int ibd_flags; char* ibd_udev_path; int ibd_readonly; struct block_device* ibd_bd; } ;
struct block_device {struct iblock_dev* bd_holder; int /*<<< orphan*/  bd_contains; int /*<<< orphan*/  bd_dev; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int BDEVNAME_SIZE ; 
 int IBDF_HAS_UDEV_PATH ; 
 struct iblock_dev* FUNC0 (struct se_device*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 char* FUNC3 (struct block_device*,char*) ; 
 int FUNC4 (char*,char*,...) ; 

__attribute__((used)) static ssize_t FUNC5(struct se_device *dev, char *b)
{
	struct iblock_dev *ib_dev = FUNC0(dev);
	struct block_device *bd = ib_dev->ibd_bd;
	char buf[BDEVNAME_SIZE];
	ssize_t bl = 0;

	if (bd)
		bl += FUNC4(b + bl, "iBlock device: %s",
				FUNC3(bd, buf));
	if (ib_dev->ibd_flags & IBDF_HAS_UDEV_PATH)
		bl += FUNC4(b + bl, "  UDEV PATH: %s",
				ib_dev->ibd_udev_path);
	bl += FUNC4(b + bl, "  readonly: %d\n", ib_dev->ibd_readonly);

	bl += FUNC4(b + bl, "        ");
	if (bd) {
		bl += FUNC4(b + bl, "Major: %d Minor: %d  %s\n",
			FUNC1(bd->bd_dev), FUNC2(bd->bd_dev), (!bd->bd_contains) ?
			"" : (bd->bd_holder == ib_dev) ?
			"CLAIMED: IBLOCK" : "CLAIMED: OS");
	} else {
		bl += FUNC4(b + bl, "Major: 0 Minor: 0\n");
	}

	return bl;
}