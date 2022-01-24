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
struct scm_fp_list {size_t count; int max; struct file** fp; } ;
struct file {int dummy; } ;
struct cmsghdr {int cmsg_len; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct cmsghdr*) ; 
 int EBADF ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int SCM_MAX_FD ; 
 struct file* FUNC2 (int) ; 
 struct scm_fp_list* FUNC3 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct cmsghdr *cmsg, struct scm_fp_list **fplp)
{
	int *fdp = (int*)FUNC1(cmsg);
	struct scm_fp_list *fpl = *fplp;
	struct file **fpp;
	int i, num;

	num = (cmsg->cmsg_len - FUNC0(sizeof(struct cmsghdr)))/sizeof(int);

	if (num <= 0)
		return 0;

	if (num > SCM_MAX_FD)
		return -EINVAL;

	if (!fpl)
	{
		fpl = FUNC3(sizeof(struct scm_fp_list), GFP_KERNEL);
		if (!fpl)
			return -ENOMEM;
		*fplp = fpl;
		fpl->count = 0;
		fpl->max = SCM_MAX_FD;
	}
	fpp = &fpl->fp[fpl->count];

	if (fpl->count + num > fpl->max)
		return -EINVAL;

	/*
	 *	Verify the descriptors and increment the usage count.
	 */

	for (i=0; i< num; i++)
	{
		int fd = fdp[i];
		struct file *file;

		if (fd < 0 || !(file = FUNC2(fd)))
			return -EBADF;
		*fpp++ = file;
		fpl->count++;
	}
	return num;
}