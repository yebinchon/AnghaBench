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
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct atm_dev {int* esi; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int ESI_LEN ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,int) ; 
 struct atm_dev* FUNC1 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC2(struct device *cdev,
			    struct device_attribute *attr, char *buf)
{
	char *pos = buf;
	struct atm_dev *adev = FUNC1(cdev);
	int i;

	for (i = 0; i < (ESI_LEN - 1); i++)
		pos += FUNC0(pos, "%02x:", adev->esi[i]);
	pos += FUNC0(pos, "%02x\n", adev->esi[i]);

	return pos - buf;
}