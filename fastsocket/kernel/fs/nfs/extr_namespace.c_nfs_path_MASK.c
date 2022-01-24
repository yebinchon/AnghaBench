#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int len; char const* name; } ;
struct dentry {struct dentry* d_parent; TYPE_1__ d_name; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  ENAMETOOLONG ; 
 char* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct dentry const*) ; 
 int /*<<< orphan*/  dcache_lock ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (char const*) ; 

char *FUNC6(const char *base,
	       const struct dentry *droot,
	       const struct dentry *dentry,
	       char *buffer, ssize_t buflen)
{
	char *end = buffer+buflen;
	int namelen;

	*--end = '\0';
	buflen--;
	FUNC3(&dcache_lock);
	while (!FUNC1(dentry) && dentry != droot) {
		namelen = dentry->d_name.len;
		buflen -= namelen + 1;
		if (buflen < 0)
			goto Elong_unlock;
		end -= namelen;
		FUNC2(end, dentry->d_name.name, namelen);
		*--end = '/';
		dentry = dentry->d_parent;
	}
	FUNC4(&dcache_lock);
	if (*end != '/') {
		if (--buflen < 0)
			goto Elong;
		*--end = '/';
	}
	namelen = FUNC5(base);
	/* Strip off excess slashes in base string */
	while (namelen > 0 && base[namelen - 1] == '/')
		namelen--;
	buflen -= namelen;
	if (buflen < 0)
		goto Elong;
	end -= namelen;
	FUNC2(end, base, namelen);
	return end;
Elong_unlock:
	FUNC4(&dcache_lock);
Elong:
	return FUNC0(-ENAMETOOLONG);
}