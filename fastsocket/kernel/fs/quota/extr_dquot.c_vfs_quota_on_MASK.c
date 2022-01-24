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
struct super_block {int dummy; } ;
struct path {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  LOOKUP_FOLLOW ; 
 int FUNC0 (char*,int /*<<< orphan*/ ,struct path*) ; 
 int /*<<< orphan*/  FUNC1 (struct path*) ; 
 int FUNC2 (struct super_block*,int,int,struct path*) ; 
 int FUNC3 (struct super_block*,int) ; 

int FUNC4(struct super_block *sb, int type, int format_id, char *name,
		 int remount)
{
	struct path path;
	int error;

	if (remount)
		return FUNC3(sb, type);

	error = FUNC0(name, LOOKUP_FOLLOW, &path);
	if (!error) {
		error = FUNC2(sb, type, format_id, &path);
		FUNC1(&path);
	}
	return error;
}