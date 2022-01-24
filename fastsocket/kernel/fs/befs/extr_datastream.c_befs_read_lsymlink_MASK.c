#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u16 ;
struct super_block {int dummy; } ;
struct buffer_head {int /*<<< orphan*/  b_data; } ;
typedef  scalar_t__ befs_off_t ;
typedef  int /*<<< orphan*/  befs_data_stream ;
struct TYPE_2__ {scalar_t__ block_size; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC1 (struct super_block*,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (struct super_block*,char*,scalar_t__) ; 
 struct buffer_head* FUNC3 (struct super_block*,int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC5 (void*,int /*<<< orphan*/ ,scalar_t__) ; 

size_t
FUNC6(struct super_block * sb, befs_data_stream * ds, void *buff,
		   befs_off_t len)
{
	befs_off_t bytes_read = 0;	/* bytes readed */
	u16 plen;
	struct buffer_head *bh = NULL;
	FUNC1(sb, "---> befs_read_lsymlink() length: %Lu", len);

	while (bytes_read < len) {
		bh = FUNC3(sb, ds, bytes_read, NULL);
		if (!bh) {
			FUNC2(sb, "BeFS: Error reading datastream block "
				   "starting from %Lu", bytes_read);
			FUNC1(sb, "<--- befs_read_lsymlink() ERROR");
			return bytes_read;

		}
		plen = ((bytes_read + FUNC0(sb)->block_size) < len) ?
		    FUNC0(sb)->block_size : len - bytes_read;
		FUNC5(buff + bytes_read, bh->b_data, plen);
		FUNC4(bh);
		bytes_read += plen;
	}

	FUNC1(sb, "<--- befs_read_lsymlink() read %u bytes", bytes_read);
	return bytes_read;
}