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
struct gfs2_inode {int /*<<< orphan*/  i_inode; int /*<<< orphan*/  i_gl; } ;
struct gfs2_ea_location {int /*<<< orphan*/  el_bh; struct gfs2_ea_header* el_prev; struct gfs2_ea_header* el_ea; } ;
struct gfs2_ea_header {int /*<<< orphan*/  ea_flags; int /*<<< orphan*/  ea_rec_len; int /*<<< orphan*/  ea_type; } ;

/* Variables and functions */
 struct gfs2_ea_header* FUNC0 (struct gfs2_ea_header*) ; 
 int /*<<< orphan*/  GFS2_EAFLAG_LAST ; 
 int /*<<< orphan*/  GFS2_EATYPE_UNUSED ; 
 scalar_t__ FUNC1 (struct gfs2_ea_header*) ; 
 int /*<<< orphan*/  FUNC2 (struct gfs2_ea_header*) ; 
 scalar_t__ FUNC3 (struct gfs2_ea_header*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(struct gfs2_inode *ip,
				  struct gfs2_ea_location *el)
{
	struct gfs2_ea_header *ea = el->el_ea;
	struct gfs2_ea_header *prev = el->el_prev;
	u32 len;

	FUNC7(ip->i_gl, el->el_bh);

	if (!prev || !FUNC2(ea)) {
		ea->ea_type = GFS2_EATYPE_UNUSED;
		return;
	} else if (FUNC0(prev) != ea) {
		prev = FUNC0(prev);
		FUNC6(FUNC4(&ip->i_inode), FUNC0(prev) == ea);
	}

	len = FUNC3(prev) + FUNC3(ea);
	prev->ea_rec_len = FUNC5(len);

	if (FUNC1(ea))
		prev->ea_flags |= GFS2_EAFLAG_LAST;
}