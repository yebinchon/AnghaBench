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
typedef  int /*<<< orphan*/  u8 ;
struct ds_status {int dummy; } ;
struct ds_device {int dummy; } ;

/* Variables and functions */
 int COMM_BLOCK_IO ; 
 int COMM_IM ; 
 int E2BIG ; 
 int FUNC0 (struct ds_device*,int /*<<< orphan*/ *,int) ; 
 int FUNC1 (struct ds_device*,int,int) ; 
 int FUNC2 (struct ds_device*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ds_device*,struct ds_status*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,int) ; 

__attribute__((used)) static int FUNC5(struct ds_device *dev, u8 *buf, int len)
{
	struct ds_status st;
	int err;

	if (len > 64*1024)
		return -E2BIG;

	FUNC4(buf, 0xFF, len);

	err = FUNC2(dev, buf, len);
	if (err < 0)
		return err;

	err = FUNC1(dev, COMM_BLOCK_IO | COMM_IM, len);
	if (err)
		return err;

	FUNC3(dev, &st);

	FUNC4(buf, 0x00, len);
	err = FUNC0(dev, buf, len);

	return err;
}