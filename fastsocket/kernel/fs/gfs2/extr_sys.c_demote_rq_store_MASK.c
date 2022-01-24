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
struct gfs2_sbd {int /*<<< orphan*/  sd_flags; } ;
struct gfs2_glock_operations {int dummy; } ;
struct gfs2_glock {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_SYS_ADMIN ; 
 int EACCES ; 
 int EINVAL ; 
 unsigned int LM_ST_DEFERRED ; 
 unsigned int LM_ST_SHARED ; 
 unsigned int LM_ST_UNLOCKED ; 
 unsigned int LM_TYPE_JOURNAL ; 
 int /*<<< orphan*/  SDF_DEMOTE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct gfs2_sbd*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct gfs2_glock*,unsigned int) ; 
 int FUNC3 (struct gfs2_sbd*,unsigned long long,struct gfs2_glock_operations const*,int /*<<< orphan*/ ,struct gfs2_glock**) ; 
 int /*<<< orphan*/  FUNC4 (struct gfs2_glock*) ; 
 struct gfs2_glock_operations** gfs2_glops_list ; 
 int FUNC5 (char const*,char*,unsigned int*,unsigned long long*,char*) ; 
 scalar_t__ FUNC6 (char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static ssize_t FUNC8(struct gfs2_sbd *sdp, const char *buf, size_t len)
{
	struct gfs2_glock *gl;
	const struct gfs2_glock_operations *glops;
	unsigned int glmode;
	unsigned int gltype;
	unsigned long long glnum;
	char mode[16];
	int rv;

	if (!FUNC0(CAP_SYS_ADMIN))
		return -EACCES;

	rv = FUNC5(buf, "%u:%llu %15s", &gltype, &glnum,
		    mode);
	if (rv != 3)
		return -EINVAL;

	if (FUNC6(mode, "EX") == 0)
		glmode = LM_ST_UNLOCKED;
	else if ((FUNC6(mode, "CW") == 0) || (FUNC6(mode, "DF") == 0))
		glmode = LM_ST_DEFERRED;
	else if ((FUNC6(mode, "PR") == 0) || (FUNC6(mode, "SH") == 0))
		glmode = LM_ST_SHARED;
	else
		return -EINVAL;

	if (gltype > LM_TYPE_JOURNAL)
		return -EINVAL;
	glops = gfs2_glops_list[gltype];
	if (glops == NULL)
		return -EINVAL;
	if (!FUNC7(SDF_DEMOTE, &sdp->sd_flags))
		FUNC1(sdp, "demote interface used\n");
	rv = FUNC3(sdp, glnum, glops, 0, &gl);
	if (rv)
		return rv;
	FUNC2(gl, glmode);
	FUNC4(gl);
	return len;
}