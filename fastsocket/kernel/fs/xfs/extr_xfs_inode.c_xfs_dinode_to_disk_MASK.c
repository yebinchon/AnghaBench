#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_8__ ;
typedef  struct TYPE_17__   TYPE_7__ ;
typedef  struct TYPE_16__   TYPE_6__ ;
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_16__ {int /*<<< orphan*/  t_nsec; int /*<<< orphan*/  t_sec; } ;
struct TYPE_14__ {int /*<<< orphan*/  t_nsec; int /*<<< orphan*/  t_sec; } ;
struct TYPE_12__ {int /*<<< orphan*/  t_nsec; int /*<<< orphan*/  t_sec; } ;
struct TYPE_17__ {int /*<<< orphan*/  di_gen; int /*<<< orphan*/  di_flags; int /*<<< orphan*/  di_dmstate; int /*<<< orphan*/  di_dmevmask; int /*<<< orphan*/  di_aformat; int /*<<< orphan*/  di_forkoff; int /*<<< orphan*/  di_anextents; int /*<<< orphan*/  di_nextents; int /*<<< orphan*/  di_extsize; int /*<<< orphan*/  di_nblocks; int /*<<< orphan*/  di_size; TYPE_6__ di_ctime; TYPE_4__ di_mtime; TYPE_2__ di_atime; int /*<<< orphan*/  di_flushiter; int /*<<< orphan*/  di_pad; int /*<<< orphan*/  di_projid_hi; int /*<<< orphan*/  di_projid_lo; int /*<<< orphan*/  di_nlink; int /*<<< orphan*/  di_gid; int /*<<< orphan*/  di_uid; int /*<<< orphan*/  di_onlink; int /*<<< orphan*/  di_format; int /*<<< orphan*/  di_version; int /*<<< orphan*/  di_mode; int /*<<< orphan*/  di_magic; } ;
typedef  TYPE_7__ xfs_icdinode_t ;
struct TYPE_15__ {void* t_nsec; void* t_sec; } ;
struct TYPE_13__ {void* t_nsec; void* t_sec; } ;
struct TYPE_11__ {void* t_nsec; void* t_sec; } ;
struct TYPE_18__ {void* di_gen; void* di_flags; void* di_dmstate; void* di_dmevmask; int /*<<< orphan*/  di_aformat; int /*<<< orphan*/  di_forkoff; void* di_anextents; void* di_nextents; void* di_extsize; void* di_nblocks; void* di_size; TYPE_5__ di_ctime; TYPE_3__ di_mtime; TYPE_1__ di_atime; void* di_flushiter; int /*<<< orphan*/  di_pad; void* di_projid_hi; void* di_projid_lo; void* di_nlink; void* di_gid; void* di_uid; void* di_onlink; int /*<<< orphan*/  di_format; int /*<<< orphan*/  di_version; void* di_mode; void* di_magic; } ;
typedef  TYPE_8__ xfs_dinode_t ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

void
FUNC4(
	xfs_dinode_t		*to,
	xfs_icdinode_t		*from)
{
	to->di_magic = FUNC0(from->di_magic);
	to->di_mode = FUNC0(from->di_mode);
	to->di_version = from ->di_version;
	to->di_format = from->di_format;
	to->di_onlink = FUNC0(from->di_onlink);
	to->di_uid = FUNC1(from->di_uid);
	to->di_gid = FUNC1(from->di_gid);
	to->di_nlink = FUNC1(from->di_nlink);
	to->di_projid_lo = FUNC0(from->di_projid_lo);
	to->di_projid_hi = FUNC0(from->di_projid_hi);
	FUNC3(to->di_pad, from->di_pad, sizeof(to->di_pad));
	to->di_flushiter = FUNC0(from->di_flushiter);
	to->di_atime.t_sec = FUNC1(from->di_atime.t_sec);
	to->di_atime.t_nsec = FUNC1(from->di_atime.t_nsec);
	to->di_mtime.t_sec = FUNC1(from->di_mtime.t_sec);
	to->di_mtime.t_nsec = FUNC1(from->di_mtime.t_nsec);
	to->di_ctime.t_sec = FUNC1(from->di_ctime.t_sec);
	to->di_ctime.t_nsec = FUNC1(from->di_ctime.t_nsec);
	to->di_size = FUNC2(from->di_size);
	to->di_nblocks = FUNC2(from->di_nblocks);
	to->di_extsize = FUNC1(from->di_extsize);
	to->di_nextents = FUNC1(from->di_nextents);
	to->di_anextents = FUNC0(from->di_anextents);
	to->di_forkoff = from->di_forkoff;
	to->di_aformat = from->di_aformat;
	to->di_dmevmask = FUNC1(from->di_dmevmask);
	to->di_dmstate = FUNC0(from->di_dmstate);
	to->di_flags = FUNC0(from->di_flags);
	to->di_gen = FUNC1(from->di_gen);
}