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
struct gfs2_rgrpd {int /*<<< orphan*/  rd_flags; } ;
struct gfs2_glock {scalar_t__ gl_object; int /*<<< orphan*/  gl_ail_count; int /*<<< orphan*/  gl_sbd; } ;
struct address_space {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int DIO_METADATA ; 
 int /*<<< orphan*/  GFS2_RDF_UPTODATE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 struct address_space* FUNC3 (struct gfs2_glock*) ; 
 int /*<<< orphan*/  FUNC4 (struct address_space*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct gfs2_glock *gl, int flags)
{
	struct address_space *mapping = FUNC3(gl);

	FUNC0(!(flags & DIO_METADATA));
	FUNC2(gl->gl_sbd, !FUNC1(&gl->gl_ail_count));
	FUNC4(mapping, 0);

	if (gl->gl_object) {
		struct gfs2_rgrpd *rgd = (struct gfs2_rgrpd *)gl->gl_object;
		rgd->rd_flags &= ~GFS2_RDF_UPTODATE;
	}
}