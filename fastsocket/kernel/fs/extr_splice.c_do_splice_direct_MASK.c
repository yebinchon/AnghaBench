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
struct TYPE_2__ {struct file* file; } ;
struct splice_desc {size_t len; size_t total_len; unsigned int flags; int /*<<< orphan*/  pos; TYPE_1__ u; } ;
struct file {int dummy; } ;
typedef  int /*<<< orphan*/  loff_t ;

/* Variables and functions */
 int /*<<< orphan*/  direct_splice_actor ; 
 long FUNC0 (struct file*,struct splice_desc*,int /*<<< orphan*/ ) ; 

long FUNC1(struct file *in, loff_t *ppos, struct file *out,
		      size_t len, unsigned int flags)
{
	struct splice_desc sd = {
		.len		= len,
		.total_len	= len,
		.flags		= flags,
		.pos		= *ppos,
		.u.file		= out,
	};
	long ret;

	ret = FUNC0(in, &sd, direct_splice_actor);
	if (ret > 0)
		*ppos = sd.pos;

	return ret;
}