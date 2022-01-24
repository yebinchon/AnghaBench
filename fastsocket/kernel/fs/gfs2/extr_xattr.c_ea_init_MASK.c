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
struct gfs2_inode {int /*<<< orphan*/  i_inode; } ;
struct gfs2_ea_request {int er_type; char const* er_name; size_t er_data_len; void* er_data; int /*<<< orphan*/  er_name_len; } ;
struct TYPE_2__ {unsigned int sd_jbsize; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (size_t,unsigned int) ; 
 unsigned int FUNC1 (struct gfs2_ea_request*) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct gfs2_inode*,struct gfs2_ea_request*,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ea_init_i ; 
 int /*<<< orphan*/  FUNC4 (char const*) ; 

__attribute__((used)) static int FUNC5(struct gfs2_inode *ip, int type, const char *name,
		   const void *data, size_t size)
{
	struct gfs2_ea_request er;
	unsigned int jbsize = FUNC2(&ip->i_inode)->sd_jbsize;
	unsigned int blks = 1;

	er.er_type = type;
	er.er_name = name;
	er.er_name_len = FUNC4(name);
	er.er_data = (void *)data;
	er.er_data_len = size;

	if (FUNC1(&er) > jbsize)
		blks += FUNC0(er.er_data_len, jbsize);

	return FUNC3(ip, &er, blks, ea_init_i, NULL);
}