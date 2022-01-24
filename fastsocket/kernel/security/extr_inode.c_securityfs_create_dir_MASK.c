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
 int S_IFDIR ; 
 int S_IRUGO ; 
 int S_IRWXU ; 
 int S_IXUGO ; 
 struct dentry* FUNC0 (char const*,int,struct dentry*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

struct dentry *FUNC1(const char *name, struct dentry *parent)
{
	return FUNC0(name,
				      S_IFDIR | S_IRWXU | S_IRUGO | S_IXUGO,
				      parent, NULL, NULL);
}