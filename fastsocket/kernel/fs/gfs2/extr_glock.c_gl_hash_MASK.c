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
typedef  int /*<<< orphan*/  u64 ;
struct lm_lockname {struct gfs2_sbd const* ln_type; struct gfs2_sbd const* ln_number; } ;
struct gfs2_sbd {int dummy; } ;

/* Variables and functions */
 unsigned int GFS2_GL_HASH_MASK ; 
 unsigned int FUNC0 (struct gfs2_sbd const**,int,unsigned int) ; 

__attribute__((used)) static unsigned int FUNC1(const struct gfs2_sbd *sdp,
			    const struct lm_lockname *name)
{
	unsigned int h;

	h = FUNC0(&name->ln_number, sizeof(u64), 0);
	h = FUNC0(&name->ln_type, sizeof(unsigned int), h);
	h = FUNC0(&sdp, sizeof(struct gfs2_sbd *), h);
	h &= GFS2_GL_HASH_MASK;

	return h;
}