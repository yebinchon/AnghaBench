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
struct dentry {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int S_IFLNK ; 
 int S_IRWXUGO ; 
 struct dentry* FUNC0 (char const*,int,struct dentry*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (char const*,int /*<<< orphan*/ ) ; 

struct dentry *FUNC3(const char *name, struct dentry *parent,
				      const char *target)
{
	struct dentry *result;
	char *link;

	link = FUNC2(target, GFP_KERNEL);
	if (!link)
		return NULL;

	result = FUNC0(name, S_IFLNK | S_IRWXUGO, parent, link,
				     NULL);
	if (!result)
		FUNC1(link);
	return result;
}