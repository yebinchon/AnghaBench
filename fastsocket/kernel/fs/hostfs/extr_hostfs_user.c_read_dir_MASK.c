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
struct dirent {char* d_name; unsigned long long d_ino; } ;
typedef  int /*<<< orphan*/  DIR ;

/* Variables and functions */
 struct dirent* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long long) ; 
 int FUNC2 (char*) ; 
 unsigned long long FUNC3 (int /*<<< orphan*/ *) ; 

char *FUNC4(void *stream, unsigned long long *pos,
	       unsigned long long *ino_out, int *len_out)
{
	DIR *dir = stream;
	struct dirent *ent;

	FUNC1(dir, *pos);
	ent = FUNC0(dir);
	if (ent == NULL)
		return NULL;
	*len_out = FUNC2(ent->d_name);
	*ino_out = ent->d_ino;
	*pos = FUNC3(dir);
	return ent->d_name;
}