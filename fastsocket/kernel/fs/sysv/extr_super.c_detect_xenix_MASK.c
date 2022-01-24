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
struct xenix_super_block {int /*<<< orphan*/  s_type; int /*<<< orphan*/  s_magic; } ;
struct sysv_sb_info {void* s_type; int /*<<< orphan*/  s_bytesex; } ;
struct buffer_head {scalar_t__ b_data; } ;
typedef  scalar_t__ __le32 ;
typedef  scalar_t__ __be32 ;

/* Variables and functions */
 int /*<<< orphan*/  BYTESEX_BE ; 
 int /*<<< orphan*/  BYTESEX_LE ; 
 void* FSTYPE_XENIX ; 
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 int FUNC2 (struct sysv_sb_info*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct sysv_sb_info *sbi, struct buffer_head *bh)
{
	struct xenix_super_block *sbd = (struct xenix_super_block *)bh->b_data;
	if (*(__le32 *)&sbd->s_magic == FUNC1(0x2b5544))
		sbi->s_bytesex = BYTESEX_LE;
	else if (*(__be32 *)&sbd->s_magic == FUNC0(0x2b5544))
		sbi->s_bytesex = BYTESEX_BE;
	else
		return 0;
	switch (FUNC2(sbi, sbd->s_type)) {
	case 1:
		sbi->s_type = FSTYPE_XENIX;
		return 1;
	case 2:
		sbi->s_type = FSTYPE_XENIX;
		return 2;
	default:
		return 0;
	}
}