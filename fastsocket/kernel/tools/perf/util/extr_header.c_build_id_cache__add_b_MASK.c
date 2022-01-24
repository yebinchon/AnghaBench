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

/* Variables and functions */
 int BUILD_ID_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*,size_t,char*) ; 
 int FUNC1 (char*,char const*,char const*,int,int) ; 

__attribute__((used)) static int FUNC2(const u8 *build_id, size_t build_id_size,
				 const char *name, const char *debugdir,
				 bool is_kallsyms, bool is_vdso)
{
	char sbuild_id[BUILD_ID_SIZE * 2 + 1];

	FUNC0(build_id, build_id_size, sbuild_id);

	return FUNC1(sbuild_id, debugdir, name,
				     is_kallsyms, is_vdso);
}