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
struct splice_desc {int num_spliced; } ;
struct pipe_inode_info {int dummy; } ;
typedef  int ssize_t ;
typedef  int /*<<< orphan*/  splice_actor ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct splice_desc*) ; 
 int /*<<< orphan*/  FUNC1 (struct pipe_inode_info*,struct splice_desc*) ; 
 int FUNC2 (struct pipe_inode_info*,struct splice_desc*,int /*<<< orphan*/ *) ; 
 int FUNC3 (struct pipe_inode_info*,struct splice_desc*) ; 

ssize_t FUNC4(struct pipe_inode_info *pipe, struct splice_desc *sd,
			   splice_actor *actor)
{
	int ret;

	FUNC0(sd);
	do {
		ret = FUNC3(pipe, sd);
		if (ret > 0)
			ret = FUNC2(pipe, sd, actor);
	} while (ret > 0);
	FUNC1(pipe, sd);

	return sd->num_spliced ? sd->num_spliced : ret;
}