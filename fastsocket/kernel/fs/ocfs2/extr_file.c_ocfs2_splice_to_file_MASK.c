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
struct splice_desc {int /*<<< orphan*/  total_len; int /*<<< orphan*/  pos; } ;
struct pipe_inode_info {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  dentry; } ;
struct file {TYPE_1__ f_path; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  pipe_to_file ; 
 int FUNC2 (struct pipe_inode_info*,struct splice_desc*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct pipe_inode_info *pipe,
				struct file *out,
				struct splice_desc *sd)
{
	int ret;

	ret = FUNC1(out->f_path.dentry,	&sd->pos,
					    sd->total_len, 0, NULL);
	if (ret < 0) {
		FUNC0(ret);
		return ret;
	}

	return FUNC2(pipe, sd, pipe_to_file);
}