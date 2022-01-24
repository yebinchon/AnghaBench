#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  nvlist_t ;
typedef  int /*<<< orphan*/  libzfs_handle_t ;
struct TYPE_5__ {scalar_t__ guid; int /*<<< orphan*/ * poolname; int /*<<< orphan*/ * cachefile; int /*<<< orphan*/  exists; scalar_t__ unique; } ;
typedef  TYPE_1__ importargs_t ;

/* Variables and functions */
 int /*<<< orphan*/  name_or_guid_exists ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*) ; 

nvlist_t *
FUNC4(libzfs_handle_t *hdl, importargs_t *import)
{
	FUNC0(import->poolname == NULL || import->guid == 0);

	if (import->unique)
		import->exists = FUNC3(hdl, name_or_guid_exists, import);

	if (import->cachefile != NULL)
		return (FUNC1(hdl, import->cachefile,
		    import->poolname, import->guid));

	return (FUNC2(hdl, import));
}