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
struct mnt_namespace {int dummy; } ;
struct fs_struct {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 unsigned long CLONE_NEWNS ; 
 struct mnt_namespace* FUNC1 (struct mnt_namespace*,struct fs_struct*) ; 
 int /*<<< orphan*/  FUNC2 (struct mnt_namespace*) ; 
 int /*<<< orphan*/  FUNC3 (struct mnt_namespace*) ; 

struct mnt_namespace *FUNC4(unsigned long flags, struct mnt_namespace *ns,
		struct fs_struct *new_fs)
{
	struct mnt_namespace *new_ns;

	FUNC0(!ns);
	FUNC2(ns);

	if (!(flags & CLONE_NEWNS))
		return ns;

	new_ns = FUNC1(ns, new_fs);

	FUNC3(ns);
	return new_ns;
}