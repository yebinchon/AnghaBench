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
struct TYPE_2__ {int /*<<< orphan*/  dentry; } ;
struct file {unsigned long long f_pos; TYPE_1__ f_path; } ;
typedef  int (* filldir_t ) (void*,char*,int,unsigned long long,unsigned long long,int /*<<< orphan*/ ) ;

/* Variables and functions */
 int /*<<< orphan*/  DT_UNKNOWN ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (void*) ; 
 char* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 void* FUNC3 (char*,int*) ; 
 char* FUNC4 (void*,unsigned long long*,unsigned long long*,int*) ; 
 int FUNC5 (void*,char*,int,unsigned long long,unsigned long long,int /*<<< orphan*/ ) ; 

int FUNC6(struct file *file, void *ent, filldir_t filldir)
{
	void *dir;
	char *name;
	unsigned long long next, ino;
	int error, len;

	name = FUNC1(file->f_path.dentry, 0);
	if (name == NULL)
		return -ENOMEM;
	dir = FUNC3(name, &error);
	FUNC2(name);
	if (dir == NULL)
		return -error;
	next = file->f_pos;
	while ((name = FUNC4(dir, &next, &ino, &len)) != NULL) {
		error = (*filldir)(ent, name, len, file->f_pos,
				   ino, DT_UNKNOWN);
		if (error) break;
		file->f_pos = next;
	}
	FUNC0(dir);
	return 0;
}