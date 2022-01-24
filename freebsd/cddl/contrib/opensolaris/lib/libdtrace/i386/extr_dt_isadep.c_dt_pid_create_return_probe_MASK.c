#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;
typedef  struct TYPE_14__   TYPE_13__ ;

/* Type definitions */
typedef  int ulong_t ;
typedef  scalar_t__ uint8_t ;
typedef  int /*<<< orphan*/  uint64_t ;
typedef  scalar_t__ uint16_t ;
struct ps_prochandle {int dummy; } ;
typedef  int /*<<< orphan*/  pid_t ;
typedef  scalar_t__ int8_t ;
typedef  scalar_t__ int32_t ;
struct TYPE_15__ {uintptr_t ftps_pc; size_t ftps_size; scalar_t__ ftps_noffs; int* ftps_offs; int /*<<< orphan*/  ftps_type; } ;
typedef  TYPE_1__ fasttrap_probe_spec_t ;
struct TYPE_16__ {int /*<<< orphan*/  dt_ftfd; } ;
typedef  TYPE_2__ dtrace_hdl_t ;
struct TYPE_17__ {int st_size; scalar_t__ st_value; } ;
struct TYPE_14__ {char pr_dmodel; int /*<<< orphan*/  pr_pid; } ;
typedef  TYPE_3__ GElf_Sym ;

/* Variables and functions */
 int /*<<< orphan*/  DTFTP_RETURN ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ DT_JMP32 ; 
 scalar_t__ DT_JMP8 ; 
 scalar_t__ DT_LEAVE ; 
 scalar_t__ DT_MOVL_EBP_ESP ; 
 scalar_t__ DT_POPL_EBP ; 
 int DT_PROC_ERR ; 
 scalar_t__ DT_REP ; 
 scalar_t__ DT_RET ; 
 scalar_t__ DT_RET16 ; 
 int /*<<< orphan*/  FASTTRAPIOC_MAKEPROBE ; 
 int FUNC2 (struct ps_prochandle*,scalar_t__*,int,scalar_t__) ; 
 TYPE_13__* FUNC3 (struct ps_prochandle*) ; 
 scalar_t__* FUNC4 (int,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 int FUNC6 (scalar_t__*,TYPE_2__*,int /*<<< orphan*/ ,scalar_t__,char) ; 
 scalar_t__ FUNC7 (struct ps_prochandle*,TYPE_2__*,scalar_t__*,TYPE_1__*,TYPE_3__ const*) ; 
 int FUNC8 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 char FUNC11 (struct ps_prochandle*) ; 
 int /*<<< orphan*/  FUNC12 (struct ps_prochandle*) ; 
 int FUNC13 (int /*<<< orphan*/ ) ; 

int
FUNC14(struct ps_prochandle *P, dtrace_hdl_t *dtp,
    fasttrap_probe_spec_t *ftp, const GElf_Sym *symp, uint64_t *stret)
{
	uint8_t *text;
	ulong_t i, end;
	int size;
#ifdef illumos
	pid_t pid = Pstatus(P)->pr_pid;
	char dmodel = Pstatus(P)->pr_dmodel;
#else
	pid_t pid = FUNC12(P);
	char dmodel = FUNC11(P);
#endif

	/*
	 * We allocate a few extra bytes at the end so we don't have to check
	 * for overrunning the buffer.
	 */
	if ((text = FUNC4(1, symp->st_size + 4)) == NULL) {
		FUNC5("mr sparkle: malloc() failed\n");
		return (DT_PROC_ERR);
	}

	if (FUNC2(P, text, symp->st_size, symp->st_value) != symp->st_size) {
		FUNC5("mr sparkle: Pread() failed\n");
		FUNC9(text);
		return (DT_PROC_ERR);
	}

	ftp->ftps_type = DTFTP_RETURN;
	ftp->ftps_pc = (uintptr_t)symp->st_value;
	ftp->ftps_size = (size_t)symp->st_size;
	ftp->ftps_noffs = 0;

	/*
	 * If there's a jump table in the function we're only willing to
	 * instrument these specific (and equivalent) instruction sequences:
	 *	leave
	 *	[rep] ret
	 * and
	 *	movl	%ebp,%esp
	 *	popl	%ebp
	 *	[rep] ret
	 *
	 * We do this to avoid accidentally interpreting jump table
	 * offsets as actual instructions.
	 */
	if (FUNC7(P, dtp, text, ftp, symp)) {
		for (i = 0, end = ftp->ftps_size; i < end; i += size) {
			size = FUNC6(&text[i], dtp, pid,
			    symp->st_value + i, dmodel);

			/* bail if we hit an invalid opcode */
			if (size <= 0)
				break;

			if (text[i] == DT_LEAVE && text[i + 1] == DT_RET) {
				FUNC5("leave/ret at %lx\n", i + 1);
				ftp->ftps_offs[ftp->ftps_noffs++] = i + 1;
				size = 2;
			} else if (text[i] == DT_LEAVE &&
			    text[i + 1] == DT_REP && text[i + 2] == DT_RET) {
				FUNC5("leave/rep ret at %lx\n", i + 1);
				ftp->ftps_offs[ftp->ftps_noffs++] = i + 1;
				size = 3;
			} else if (*(uint16_t *)&text[i] == DT_MOVL_EBP_ESP &&
			    text[i + 2] == DT_POPL_EBP &&
			    text[i + 3] == DT_RET) {
				FUNC5("movl/popl/ret at %lx\n", i + 3);
				ftp->ftps_offs[ftp->ftps_noffs++] = i + 3;
				size = 4;
			} else if (*(uint16_t *)&text[i] == DT_MOVL_EBP_ESP &&
			    text[i + 2] == DT_POPL_EBP &&
			    text[i + 3] == DT_REP &&
			    text[i + 4] == DT_RET) {
				FUNC5("movl/popl/rep ret at %lx\n", i + 3);
				ftp->ftps_offs[ftp->ftps_noffs++] = i + 3;
				size = 5;
			}
		}
	} else {
		for (i = 0, end = ftp->ftps_size; i < end; i += size) {
			size = FUNC6(&text[i], dtp, pid,
			    symp->st_value + i, dmodel);

			/* bail if we hit an invalid opcode */
			if (size <= 0)
				break;

			/* ordinary ret */
			if (size == 1 && text[i] == DT_RET)
				goto is_ret;

			/* two-byte ret */
			if (size == 2 && text[i] == DT_REP &&
			    text[i + 1] == DT_RET)
				goto is_ret;

			/* ret <imm16> */
			if (size == 3 && text[i] == DT_RET16)
				goto is_ret;

			/* two-byte ret <imm16> */
			if (size == 4 && text[i] == DT_REP &&
			    text[i + 1] == DT_RET16)
				goto is_ret;

			/* 32-bit displacement jmp outside of the function */
			if (size == 5 && text[i] == DT_JMP32 && symp->st_size <=
			    (uintptr_t)(i + size + *(int32_t *)&text[i + 1]))
				goto is_ret;

			/* 8-bit displacement jmp outside of the function */
			if (size == 2 && text[i] == DT_JMP8 && symp->st_size <=
			    (uintptr_t)(i + size + *(int8_t *)&text[i + 1]))
				goto is_ret;

			/* 32-bit disp. conditional jmp outside of the func. */
			if (size == 6 && FUNC0(*(uint16_t *)&text[i]) &&
			    symp->st_size <=
			    (uintptr_t)(i + size + *(int32_t *)&text[i + 2]))
				goto is_ret;

			/* 8-bit disp. conditional jmp outside of the func. */
			if (size == 2 && FUNC1(text[i]) && symp->st_size <=
			    (uintptr_t)(i + size + *(int8_t *)&text[i + 1]))
				goto is_ret;

			continue;
is_ret:
			FUNC5("return at offset %lx\n", i);
			ftp->ftps_offs[ftp->ftps_noffs++] = i;
		}
	}

	FUNC9(text);
	if (ftp->ftps_noffs > 0) {
		if (FUNC10(dtp->dt_ftfd, FASTTRAPIOC_MAKEPROBE, ftp) != 0) {
			FUNC5("fasttrap probe creation ioctl failed: %s\n",
			    FUNC13(errno));
			return (FUNC8(dtp, errno));
		}
	}

	return (ftp->ftps_noffs);
}