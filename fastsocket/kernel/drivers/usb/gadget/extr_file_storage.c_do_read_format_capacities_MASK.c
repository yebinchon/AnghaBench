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
typedef  int u8 ;
struct lun {int num_sectors; } ;
struct fsg_dev {struct lun* curlun; } ;
struct fsg_buffhd {scalar_t__ buf; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int*) ; 

__attribute__((used)) static int FUNC1(struct fsg_dev *fsg,
			struct fsg_buffhd *bh)
{
	struct lun	*curlun = fsg->curlun;
	u8		*buf = (u8 *) bh->buf;

	buf[0] = buf[1] = buf[2] = 0;
	buf[3] = 8;		// Only the Current/Maximum Capacity Descriptor
	buf += 4;

	FUNC0(curlun->num_sectors, &buf[0]);
						/* Number of blocks */
	FUNC0(512, &buf[4]);	/* Block length */
	buf[4] = 0x02;				/* Current capacity */
	return 12;
}