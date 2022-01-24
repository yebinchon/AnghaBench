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
typedef  scalar_t__ uint16_t ;
struct ustr {int u_len; int /*<<< orphan*/  u_name; } ;
struct timestamp {int /*<<< orphan*/  typeAndTimezone; int /*<<< orphan*/  minute; int /*<<< orphan*/  hour; int /*<<< orphan*/  day; int /*<<< orphan*/  month; int /*<<< orphan*/  year; } ;
struct super_block {int dummy; } ;
struct primaryVolDesc {int /*<<< orphan*/  volSetIdent; int /*<<< orphan*/  volIdent; struct timestamp recordingDateAndTime; } ;
struct buffer_head {scalar_t__ b_data; } ;
typedef  int /*<<< orphan*/  sector_t ;
struct TYPE_2__ {int /*<<< orphan*/  s_volume_ident; int /*<<< orphan*/  s_record_time; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 scalar_t__ TAG_IDENT_PVD ; 
 TYPE_1__* FUNC1 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC2 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC3 (struct ustr*) ; 
 struct ustr* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC7 (struct ustr*,struct ustr*) ; 
 int /*<<< orphan*/  FUNC8 (struct ustr*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/ ,...) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,struct timestamp) ; 
 struct buffer_head* FUNC11 (struct super_block*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*) ; 

__attribute__((used)) static int FUNC12(struct super_block *sb, sector_t block)
{
	struct primaryVolDesc *pvoldesc;
	struct ustr *instr, *outstr;
	struct buffer_head *bh;
	uint16_t ident;
	int ret = 1;

	instr = FUNC4(sizeof(struct ustr), GFP_NOFS);
	if (!instr)
		return 1;

	outstr = FUNC4(sizeof(struct ustr), GFP_NOFS);
	if (!outstr)
		goto out1;

	bh = FUNC11(sb, block, block, &ident);
	if (!bh)
		goto out2;

	FUNC0(ident != TAG_IDENT_PVD);

	pvoldesc = (struct primaryVolDesc *)bh->b_data;

	if (FUNC10(&FUNC1(sb)->s_record_time,
			      pvoldesc->recordingDateAndTime)) {
#ifdef UDFFS_DEBUG
		struct timestamp *ts = &pvoldesc->recordingDateAndTime;
		udf_debug("recording time %04u/%02u/%02u"
			  " %02u:%02u (%x)\n",
			  le16_to_cpu(ts->year), ts->month, ts->day, ts->hour,
			  ts->minute, le16_to_cpu(ts->typeAndTimezone));
#endif
	}

	if (!FUNC8(instr, pvoldesc->volIdent, 32))
		if (FUNC7(outstr, instr)) {
			FUNC6(FUNC1(sb)->s_volume_ident, outstr->u_name,
				outstr->u_len > 31 ? 31 : outstr->u_len);
			FUNC9("volIdent[] = '%s'\n",
					FUNC1(sb)->s_volume_ident);
		}

	if (!FUNC8(instr, pvoldesc->volSetIdent, 128))
		if (FUNC7(outstr, instr))
			FUNC9("volSetIdent[] = '%s'\n", outstr->u_name);

	FUNC2(bh);
	ret = 0;
out2:
	FUNC3(outstr);
out1:
	FUNC3(instr);
	return ret;
}