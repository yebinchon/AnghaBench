#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct TYPE_3__ {char* procname; struct TYPE_3__* parent; } ;
typedef  TYPE_1__ ctl_table ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int PAGE_SIZE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,int) ; 
 int FUNC3 (char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 size_t FUNC4 (char const*) ; 

__attribute__((used)) static int FUNC5(ctl_table *table, u16 tclass, u32 *sid)
{
	int buflen, rc;
	char *buffer, *path, *end;

	rc = -ENOMEM;
	buffer = (char *)FUNC0(GFP_KERNEL);
	if (!buffer)
		goto out;

	buflen = PAGE_SIZE;
	end = buffer+buflen;
	*--end = '\0';
	buflen--;
	path = end-1;
	*path = '/';
	while (table) {
		const char *name = table->procname;
		size_t namelen = FUNC4(name);
		buflen -= namelen + 1;
		if (buflen < 0)
			goto out_free;
		end -= namelen;
		FUNC2(end, name, namelen);
		*--end = '/';
		path = end;
		table = table->parent;
	}
	buflen -= 4;
	if (buflen < 0)
		goto out_free;
	end -= 4;
	FUNC2(end, "/sys", 4);
	path = end;
	rc = FUNC3("proc", path, tclass, sid);
out_free:
	FUNC1((unsigned long)buffer);
out:
	return rc;
}