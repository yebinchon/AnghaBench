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
struct snd_kctl_ioctl {int /*<<< orphan*/  list; int /*<<< orphan*/  fioctl; } ;
struct list_head {int dummy; } ;
typedef  int /*<<< orphan*/  snd_kctl_ioctl_func_t ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct snd_kctl_ioctl* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct list_head*) ; 
 int /*<<< orphan*/  snd_ioctl_rwsem ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(snd_kctl_ioctl_func_t fcn, struct list_head *lists)
{
	struct snd_kctl_ioctl *pn;

	pn = FUNC1(sizeof(struct snd_kctl_ioctl), GFP_KERNEL);
	if (pn == NULL)
		return -ENOMEM;
	pn->fioctl = fcn;
	FUNC0(&snd_ioctl_rwsem);
	FUNC2(&pn->list, lists);
	FUNC3(&snd_ioctl_rwsem);
	return 0;
}