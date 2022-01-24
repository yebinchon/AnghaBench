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
struct seq_file {int dummy; } ;
struct path {int dummy; } ;

/* Variables and functions */
 int ENAMETOOLONG ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (char*) ; 
 char* FUNC2 (struct path*,struct path*,char*,size_t) ; 
 int /*<<< orphan*/  dcache_lock ; 
 char* FUNC3 (char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct seq_file*,int) ; 
 size_t FUNC5 (struct seq_file*,char**) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

int FUNC8(struct seq_file *m, struct path *path, struct path *root,
		  char *esc)
{
	char *buf;
	size_t size = FUNC5(m, &buf);
	int res = -ENAMETOOLONG;

	if (size) {
		char *p;

		FUNC6(&dcache_lock);
		p = FUNC2(path, root, buf, size);
		FUNC7(&dcache_lock);
		res = FUNC1(p);
		if (!FUNC0(p)) {
			char *end = FUNC3(buf, p, esc);
			if (end)
				res = end - buf;
			else
				res = -ENAMETOOLONG;
		}
	}
	FUNC4(m, res);

	return res < 0 ? res : 0;
}