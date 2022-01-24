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
struct configfs_dirent {int s_type; int /*<<< orphan*/  s_iattr; } ;

/* Variables and functions */
 int CONFIGFS_ROOT ; 
 int /*<<< orphan*/  configfs_dir_cachep ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct configfs_dirent*) ; 

__attribute__((used)) static inline void FUNC2(struct configfs_dirent * sd)
{
	if (!(sd->s_type & CONFIGFS_ROOT)) {
		FUNC0(sd->s_iattr);
		FUNC1(configfs_dir_cachep, sd);
	}
}