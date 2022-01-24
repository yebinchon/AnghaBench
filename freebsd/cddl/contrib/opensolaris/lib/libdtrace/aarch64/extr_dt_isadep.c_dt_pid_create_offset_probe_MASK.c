#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ulong_t ;
struct ps_prochandle {int dummy; } ;
struct TYPE_9__ {uintptr_t ftps_pc; size_t ftps_size; int ftps_noffs; int /*<<< orphan*/ * ftps_offs; int /*<<< orphan*/  ftps_type; } ;
typedef  TYPE_1__ fasttrap_probe_spec_t ;
struct TYPE_10__ {int /*<<< orphan*/  dt_ftfd; } ;
typedef  TYPE_2__ dtrace_hdl_t ;
struct TYPE_11__ {scalar_t__ st_size; scalar_t__ st_value; } ;
typedef  TYPE_3__ GElf_Sym ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  DTFTP_OFFSETS ; 
 int DT_PROC_ALIGN ; 
 int /*<<< orphan*/  FASTTRAPIOC_MAKEPROBE ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int FUNC2 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  errno ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

int
FUNC5(struct ps_prochandle *P, dtrace_hdl_t *dtp,
    fasttrap_probe_spec_t *ftp, const GElf_Sym *symp, ulong_t off)
{

	if (!FUNC0(off, 4))
		return (DT_PROC_ALIGN);

	ftp->ftps_type = DTFTP_OFFSETS;
	ftp->ftps_pc = (uintptr_t)symp->st_value;
	ftp->ftps_size = (size_t)symp->st_size;
	ftp->ftps_noffs = 1;
	ftp->ftps_offs[0] = off;

	if (FUNC3(dtp->dt_ftfd, FASTTRAPIOC_MAKEPROBE, ftp) != 0) {
		FUNC1("fasttrap probe creation ioctl failed: %s\n",
		    FUNC4(errno));
		return (FUNC2(dtp, errno));
	}

	return (1);
}