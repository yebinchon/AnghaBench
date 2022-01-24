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
struct super_block {int dummy; } ;
struct buffer_head {int dummy; } ;
typedef  int /*<<< orphan*/  befs_blocknr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct super_block*,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct super_block*,char*,int /*<<< orphan*/ ) ; 
 struct buffer_head* FUNC2 (struct super_block*,int /*<<< orphan*/ ) ; 

struct buffer_head *
FUNC3(struct super_block *sb, befs_blocknr_t block)
{
	struct buffer_head *bh = NULL;

	FUNC0(sb, "---> Enter befs_read() %Lu", block);

	bh = FUNC2(sb, block);

	if (bh == NULL) {
		FUNC1(sb, "Failed to read block %lu", block);
		goto error;
	}

	FUNC0(sb, "<--- befs_read()");

	return bh;

      error:
	FUNC0(sb, "<--- befs_read() ERROR");
	return NULL;
}