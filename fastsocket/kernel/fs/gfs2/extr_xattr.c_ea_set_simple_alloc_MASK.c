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
struct gfs2_inode {int /*<<< orphan*/  i_gl; } ;
struct gfs2_ea_request {int dummy; } ;
struct gfs2_ea_header {int dummy; } ;
struct ea_set {scalar_t__ es_el; scalar_t__ ea_split; int /*<<< orphan*/  es_bh; struct gfs2_ea_header* es_ea; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct gfs2_inode*,scalar_t__) ; 
 struct gfs2_ea_header* FUNC1 (struct gfs2_ea_header*) ; 
 int FUNC2 (struct gfs2_inode*,struct gfs2_ea_header*,struct gfs2_ea_request*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct gfs2_inode *ip,
			       struct gfs2_ea_request *er, void *private)
{
	struct ea_set *es = private;
	struct gfs2_ea_header *ea = es->es_ea;
	int error;

	FUNC3(ip->i_gl, es->es_bh);

	if (es->ea_split)
		ea = FUNC1(ea);

	error = FUNC2(ip, ea, er);
	if (error)
		return error;

	if (es->es_el)
		FUNC0(ip, es->es_el);

	return 0;
}