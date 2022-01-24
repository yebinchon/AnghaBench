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
typedef  int /*<<< orphan*/  u32 ;
struct gfs2_sbd {int dummy; } ;
struct TYPE_2__ {void* mh_format; void* mh_type; void* mh_magic; } ;
struct gfs2_log_descriptor {int /*<<< orphan*/  ld_reserved; scalar_t__ ld_data2; scalar_t__ ld_data1; scalar_t__ ld_length; void* ld_type; TYPE_1__ ld_header; } ;
struct buffer_head {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFS2_FORMAT_LD ; 
 int /*<<< orphan*/  GFS2_MAGIC ; 
 int /*<<< orphan*/  GFS2_METATYPE_LD ; 
 struct gfs2_log_descriptor* FUNC0 (struct buffer_head*) ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 struct buffer_head* FUNC2 (struct gfs2_sbd*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static struct buffer_head *FUNC4(struct gfs2_sbd *sdp, u32 ld_type)
{
	struct buffer_head *bh = FUNC2(sdp);
	struct gfs2_log_descriptor *ld = FUNC0(bh);
	ld->ld_header.mh_magic = FUNC1(GFS2_MAGIC);
	ld->ld_header.mh_type = FUNC1(GFS2_METATYPE_LD);
	ld->ld_header.mh_format = FUNC1(GFS2_FORMAT_LD);
	ld->ld_type = FUNC1(ld_type);
	ld->ld_length = 0;
	ld->ld_data1 = 0;
	ld->ld_data2 = 0;
	FUNC3(ld->ld_reserved, 0, sizeof(ld->ld_reserved));
	return bh;
}