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
struct sysfs_dirent {int /*<<< orphan*/  s_parent; } ;
struct sysfs_addrm_cxt {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sysfs_addrm_cxt*) ; 
 int /*<<< orphan*/  FUNC1 (struct sysfs_addrm_cxt*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sysfs_addrm_cxt*,struct sysfs_dirent*) ; 

__attribute__((used)) static void FUNC3(struct sysfs_dirent *sd)
{
	struct sysfs_addrm_cxt acxt;

	FUNC1(&acxt, sd->s_parent);
	FUNC2(&acxt, sd);
	FUNC0(&acxt);
}