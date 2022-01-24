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
struct gfs2_inode {int dummy; } ;
struct gfs2_ea_request {scalar_t__ er_data_len; scalar_t__ er_data; } ;
struct gfs2_ea_header {int ea_type; int ea_name_len; } ;
struct ea_list {scalar_t__ ei_size; struct gfs2_ea_request* ei_er; } ;
struct buffer_head {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ERANGE ; 
 char* FUNC1 (struct gfs2_ea_header*) ; 
#define  GFS2_EATYPE_SECURITY 130 
#define  GFS2_EATYPE_SYS 129 
 int GFS2_EATYPE_UNUSED ; 
#define  GFS2_EATYPE_USR 128 
 unsigned int FUNC2 (struct gfs2_ea_header*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,char*,int) ; 

__attribute__((used)) static int FUNC4(struct gfs2_inode *ip, struct buffer_head *bh,
		     struct gfs2_ea_header *ea, struct gfs2_ea_header *prev,
		     void *private)
{
	struct ea_list *ei = private;
	struct gfs2_ea_request *er = ei->ei_er;
	unsigned int ea_size = FUNC2(ea);

	if (ea->ea_type == GFS2_EATYPE_UNUSED)
		return 0;

	if (er->er_data_len) {
		char *prefix = NULL;
		unsigned int l = 0;
		char c = 0;

		if (ei->ei_size + ea_size > er->er_data_len)
			return -ERANGE;

		switch (ea->ea_type) {
		case GFS2_EATYPE_USR:
			prefix = "user.";
			l = 5;
			break;
		case GFS2_EATYPE_SYS:
			prefix = "system.";
			l = 7;
			break;
		case GFS2_EATYPE_SECURITY:
			prefix = "security.";
			l = 9;
			break;
		}

		FUNC0(l == 0);

		FUNC3(er->er_data + ei->ei_size, prefix, l);
		FUNC3(er->er_data + ei->ei_size + l, FUNC1(ea),
		       ea->ea_name_len);
		FUNC3(er->er_data + ei->ei_size + ea_size - 1, &c, 1);
	}

	ei->ei_size += ea_size;

	return 0;
}