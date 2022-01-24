#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct udf_sb_info {scalar_t__ s_lvid_dirty; struct buffer_head* s_lvid_bh; } ;
struct tag {int dummy; } ;
struct super_block {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/ * identSuffix; } ;
struct logicalVolIntegrityDescImpUse {TYPE_1__ impIdent; } ;
struct TYPE_4__ {int /*<<< orphan*/  tagChecksum; int /*<<< orphan*/  descCRCLength; int /*<<< orphan*/  descCRC; } ;
struct logicalVolIntegrityDesc {TYPE_2__ descTag; int /*<<< orphan*/  integrityType; int /*<<< orphan*/  recordingDateAndTime; } ;
struct buffer_head {scalar_t__ b_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  CURRENT_TIME ; 
 int /*<<< orphan*/  LVID_INTEGRITY_TYPE_OPEN ; 
 int /*<<< orphan*/  UDF_OS_CLASS_UNIX ; 
 int /*<<< orphan*/  UDF_OS_ID_LINUX ; 
 struct udf_sb_info* FUNC0 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct buffer_head*) ; 
 struct logicalVolIntegrityDescImpUse* FUNC6 (struct udf_sb_info*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9(struct super_block *sb)
{
	struct udf_sb_info *sbi = FUNC0(sb);
	struct buffer_head *bh = sbi->s_lvid_bh;
	struct logicalVolIntegrityDesc *lvid;
	struct logicalVolIntegrityDescImpUse *lvidiu;

	if (!bh)
		return;
	lvid = (struct logicalVolIntegrityDesc *)bh->b_data;
	lvidiu = FUNC6(sbi);

	lvidiu->impIdent.identSuffix[0] = UDF_OS_CLASS_UNIX;
	lvidiu->impIdent.identSuffix[1] = UDF_OS_ID_LINUX;
	FUNC8(&lvid->recordingDateAndTime,
				CURRENT_TIME);
	lvid->integrityType = FUNC2(LVID_INTEGRITY_TYPE_OPEN);

	lvid->descTag.descCRC = FUNC1(
		FUNC3(0, (char *)lvid + sizeof(struct tag),
			FUNC4(lvid->descTag.descCRCLength)));

	lvid->descTag.tagChecksum = FUNC7(&lvid->descTag);
	FUNC5(bh);
	sbi->s_lvid_dirty = 0;
}