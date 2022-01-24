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
struct tgid_iter {int tgid; int /*<<< orphan*/  task; } ;
struct file {int dummy; } ;
typedef  int /*<<< orphan*/  name ;
typedef  int /*<<< orphan*/  filldir_t ;

/* Variables and functions */
 int PROC_NUMBUF ; 
 int FUNC0 (struct file*,void*,int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  proc_pid_instantiate ; 
 int FUNC1 (char*,int,char*,int) ; 

__attribute__((used)) static int FUNC2(struct file *filp, void *dirent, filldir_t filldir,
	struct tgid_iter iter)
{
	char name[PROC_NUMBUF];
	int len = FUNC1(name, sizeof(name), "%d", iter.tgid);
	return FUNC0(filp, dirent, filldir, name, len,
				proc_pid_instantiate, iter.task, NULL);
}