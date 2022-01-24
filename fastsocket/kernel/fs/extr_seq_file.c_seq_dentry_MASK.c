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
struct dentry {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (struct dentry*,char*,size_t) ; 
 char* FUNC2 (char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct seq_file*,int) ; 
 size_t FUNC4 (struct seq_file*,char**) ; 

int FUNC5(struct seq_file *m, struct dentry *dentry, char *esc)
{
	char *buf;
	size_t size = FUNC4(m, &buf);
	int res = -1;

	if (size) {
		char *p = FUNC1(dentry, buf, size);
		if (!FUNC0(p)) {
			char *end = FUNC2(buf, p, esc);
			if (end)
				res = end - buf;
		}
	}
	FUNC3(m, res);

	return res;
}