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
struct file {char const* name; struct file* next; } ;

/* Variables and functions */
 struct file* file_list ; 
 int /*<<< orphan*/  FUNC0 (void*) ; 
 struct file* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct file*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (char const*,char const*) ; 
 char* FUNC4 (char const*) ; 

struct file *FUNC5(const char *name)
{
	struct file *file;
	const char *file_name = FUNC4(name);

	for (file = file_list; file; file = file->next) {
		if (!FUNC3(name, file->name)) {
			FUNC0((void *)file_name);
			return file;
		}
	}

	file = FUNC1(sizeof(*file));
	FUNC2(file, 0, sizeof(*file));
	file->name = file_name;
	file->next = file_list;
	file_list = file;
	return file;
}