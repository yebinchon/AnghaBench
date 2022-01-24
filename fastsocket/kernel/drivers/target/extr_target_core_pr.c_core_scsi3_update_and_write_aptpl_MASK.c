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
typedef  int u32 ;
struct se_device {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct se_device*,unsigned char*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct se_device*,unsigned char*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC3(struct se_device *dev, unsigned char *in_buf,
		u32 in_pr_aptpl_buf_len)
{
	unsigned char null_buf[64], *buf;
	u32 pr_aptpl_buf_len;
	int clear_aptpl_metadata = 0;
	int ret;

	/*
	 * Can be called with a NULL pointer from PROUT service action CLEAR
	 */
	if (!in_buf) {
		FUNC2(null_buf, 0, 64);
		buf = &null_buf[0];
		/*
		 * This will clear the APTPL metadata to:
		 * "No Registrations or Reservations" status
		 */
		pr_aptpl_buf_len = 64;
		clear_aptpl_metadata = 1;
	} else {
		buf = in_buf;
		pr_aptpl_buf_len = in_pr_aptpl_buf_len;
	}

	ret = FUNC1(dev, buf, pr_aptpl_buf_len,
				clear_aptpl_metadata);
	if (ret != 0)
		return ret;

	/*
	 * __core_scsi3_write_aptpl_to_file() will call strlen()
	 * on the passed buf to determine pr_aptpl_buf_len.
	 */
	return FUNC0(dev, buf, 0);
}