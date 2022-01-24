#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct ps_prochandle {int dummy; } ;
struct TYPE_10__ {int /*<<< orphan*/  prs_lmid; } ;
typedef  TYPE_1__ prsyminfo_t ;
struct TYPE_11__ {scalar_t__ pr_vaddr; } ;
typedef  TYPE_2__ prmap_t ;
typedef  int /*<<< orphan*/  e_type ;
struct TYPE_12__ {int /*<<< orphan*/  dofhp_mod; int /*<<< orphan*/  dofhp_pid; scalar_t__ dofhp_addr; int /*<<< orphan*/  dofhp_dof; } ;
typedef  TYPE_3__ dof_helper_t ;
typedef  int /*<<< orphan*/  dh ;
struct TYPE_13__ {int /*<<< orphan*/  st_value; } ;
typedef  TYPE_4__ GElf_Sym ;
typedef  scalar_t__ GElf_Half ;

/* Variables and functions */
 int /*<<< orphan*/  DTRACEHIOC_ADDDOF ; 
 scalar_t__ ET_EXEC ; 
 int /*<<< orphan*/  Elf64_Ehdr ; 
 int /*<<< orphan*/  O_RDWR ; 
 int /*<<< orphan*/  PR_LMID_EVERY ; 
 int FUNC0 (struct ps_prochandle*,scalar_t__*,int,scalar_t__) ; 
 scalar_t__ FUNC1 (struct ps_prochandle*,int /*<<< orphan*/ ,char const*,char const*,TYPE_4__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  errno ; 
 scalar_t__ FUNC5 (int,int /*<<< orphan*/ ,TYPE_3__*,int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC7 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct ps_prochandle*,int) ; 
 scalar_t__ FUNC9 (struct ps_prochandle*,int,int /*<<< orphan*/ ,TYPE_3__*,int) ; 
 int FUNC10 (struct ps_prochandle*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct ps_prochandle*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 char* FUNC13 (char const*,char) ; 

__attribute__((used)) static int
FUNC14(void *data, const prmap_t *pmp, const char *oname)
{
	struct ps_prochandle *P = data;
	GElf_Sym sym;
	prsyminfo_t sip;
	dof_helper_t dh;
	GElf_Half e_type;
	const char *mname;
	const char *syms[] = { "___SUNW_dof", "__SUNW_dof" };
	int i, fd = -1;

	/*
	 * The symbol ___SUNW_dof is for lazy-loaded DOF sections, and
	 * __SUNW_dof is for actively-loaded DOF sections. We try to force
	 * in both types of DOF section since the process may not yet have
	 * run the code to instantiate these providers.
	 */
	for (i = 0; i < 2; i++) {
		if (FUNC1(P, PR_LMID_EVERY, oname, syms[i], &sym,
		    &sip) != 0) {
			continue;
		}

		if ((mname = FUNC13(oname, '/')) == NULL)
			mname = oname;
		else
			mname++;

		FUNC3("lookup of %s succeeded for %s\n", syms[i], mname);

		if (FUNC0(P, &e_type, sizeof (e_type), pmp->pr_vaddr +
		    FUNC6(Elf64_Ehdr, e_type)) != sizeof (e_type)) {
			FUNC3("read of ELF header failed");
			continue;
		}

		dh.dofhp_dof = sym.st_value;
		dh.dofhp_addr = (e_type == ET_EXEC) ? 0 : pmp->pr_vaddr;

		FUNC4(dh.dofhp_mod, sizeof (dh.dofhp_mod),
		    sip.prs_lmid, mname);

#ifdef __FreeBSD__
		dh.dofhp_pid = proc_getpid(P);

		if (fd == -1 &&
		    (fd = open("/dev/dtrace/helper", O_RDWR, 0)) < 0) {
			dt_dprintf("open of helper device failed: %s\n",
			    strerror(errno));
			return (-1); /* errno is set for us */
		}

		if (ioctl(fd, DTRACEHIOC_ADDDOF, &dh, sizeof (dh)) < 0)
			dt_dprintf("DOF was rejected for %s\n", dh.dofhp_mod);
#else
		if (fd == -1 &&
		    (fd = FUNC10(P, "/dev/dtrace/helper", O_RDWR, 0)) < 0) {
			FUNC3("pr_open of helper device failed: %s\n",
			    FUNC12(errno));
			return (-1); /* errno is set for us */
		}

		if (FUNC9(P, fd, DTRACEHIOC_ADDDOF, &dh, sizeof (dh)) < 0)
			FUNC3("DOF was rejected for %s\n", dh.dofhp_mod);
#endif
	}

	if (fd != -1)
#ifdef __FreeBSD__
		(void) close(fd);
#else
		(void) FUNC8(P, fd);
#endif

	return (0);
}