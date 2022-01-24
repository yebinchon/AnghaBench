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
struct fdt_reserve_entry {int dummy; } ;
struct fdt_header {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int FDT_ERR_NOSPACE ; 
 int /*<<< orphan*/  FDT_FIRST_SUPPORTED_VERSION ; 
 int /*<<< orphan*/  FDT_LAST_SUPPORTED_VERSION ; 
 int /*<<< orphan*/  FDT_SW_MAGIC ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (void*,int) ; 
 int /*<<< orphan*/  FUNC5 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (void*,int) ; 
 int /*<<< orphan*/  FUNC8 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (void*,int /*<<< orphan*/ ,int) ; 

int FUNC10(void *buf, int bufsize)
{
	void *fdt = buf;

	if (bufsize < sizeof(struct fdt_header))
		return -FDT_ERR_NOSPACE;

	FUNC9(buf, 0, bufsize);

	FUNC3(fdt, FDT_SW_MAGIC);
	FUNC8(fdt, FDT_LAST_SUPPORTED_VERSION);
	FUNC2(fdt, FDT_FIRST_SUPPORTED_VERSION);
	FUNC7(fdt,  bufsize);

	FUNC6(fdt, FUNC0(sizeof(struct fdt_header),
					      sizeof(struct fdt_reserve_entry)));
	FUNC5(fdt, FUNC1(fdt));
	FUNC4(fdt, bufsize);

	return 0;
}