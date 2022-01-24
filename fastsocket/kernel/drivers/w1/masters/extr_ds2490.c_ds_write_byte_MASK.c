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
typedef  scalar_t__ u8 ;
struct ds_status {int dummy; } ;
struct ds_device {int spu_bit; int /*<<< orphan*/  spu_sleep; } ;
typedef  int /*<<< orphan*/  rbyte ;

/* Variables and functions */
 int COMM_BYTE_IO ; 
 int COMM_IM ; 
 int FUNC0 (struct ds_device*,scalar_t__*,int) ; 
 int FUNC1 (struct ds_device*,int,scalar_t__) ; 
 int FUNC2 (struct ds_device*,struct ds_status*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct ds_device *dev, u8 byte)
{
	int err;
	struct ds_status st;
	u8 rbyte;

	err = FUNC1(dev, COMM_BYTE_IO | COMM_IM | dev->spu_bit, byte);
	if (err)
		return err;

	if (dev->spu_bit)
		FUNC3(dev->spu_sleep);

	err = FUNC2(dev, &st);
	if (err)
		return err;

	err = FUNC0(dev, &rbyte, sizeof(rbyte));
	if (err < 0)
		return err;

	return !(byte == rbyte);
}