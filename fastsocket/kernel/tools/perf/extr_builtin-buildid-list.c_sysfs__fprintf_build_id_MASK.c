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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  kallsyms_build_id ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int BUILD_ID_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,char*) ; 
 scalar_t__ FUNC2 (char*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC3(FILE *fp)
{
	u8 kallsyms_build_id[BUILD_ID_SIZE];
	char sbuild_id[BUILD_ID_SIZE * 2 + 1];

	if (FUNC2("/sys/kernel/notes", kallsyms_build_id,
				 sizeof(kallsyms_build_id)) != 0)
		return -1;

	FUNC0(kallsyms_build_id, sizeof(kallsyms_build_id),
			  sbuild_id);
	FUNC1(fp, "%s\n", sbuild_id);
	return 0;
}