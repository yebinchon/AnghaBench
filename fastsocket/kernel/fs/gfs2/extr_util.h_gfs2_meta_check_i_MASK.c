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
typedef  scalar_t__ u32 ;
struct gfs2_sbd {int dummy; } ;
struct gfs2_meta_header {int /*<<< orphan*/  mh_magic; } ;
struct buffer_head {scalar_t__ b_data; } ;

/* Variables and functions */
 scalar_t__ GFS2_MAGIC ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct gfs2_sbd*,struct buffer_head*,char*,char const*,char*,unsigned int) ; 
 scalar_t__ FUNC2 (int) ; 

__attribute__((used)) static inline int FUNC3(struct gfs2_sbd *sdp,
				    struct buffer_head *bh,
				    const char *function,
				    char *file, unsigned int line)
{
	struct gfs2_meta_header *mh = (struct gfs2_meta_header *)bh->b_data;
	u32 magic = FUNC0(mh->mh_magic);
	if (FUNC2(magic != GFS2_MAGIC))
		return FUNC1(sdp, bh, "magic number", function,
					  file, line);
	return 0;
}