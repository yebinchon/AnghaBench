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
struct subprocess_info {char* path; char** argv; char** envp; int /*<<< orphan*/  cred; int /*<<< orphan*/  work; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  __call_usermodehelper ; 
 int /*<<< orphan*/  FUNC1 (struct subprocess_info*) ; 
 struct subprocess_info* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 

struct subprocess_info *FUNC4(char *path, char **argv,
						  char **envp, gfp_t gfp_mask)
{
	struct subprocess_info *sub_info;
	sub_info = FUNC2(sizeof(struct subprocess_info), gfp_mask);
	if (!sub_info)
		goto out;

	FUNC0(&sub_info->work, __call_usermodehelper);
	sub_info->path = path;
	sub_info->argv = argv;
	sub_info->envp = envp;
	sub_info->cred = FUNC3();
	if (!sub_info->cred) {
		FUNC1(sub_info);
		return NULL;
	}

  out:
	return sub_info;
}