#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {char* libzfs_desc; int libzfs_error; } ;
typedef  TYPE_1__ libzfs_handle_t ;

/* Variables and functions */
#define  EZFS_ACTIVE_SPARE 208 
#define  EZFS_BADBACKUP 207 
#define  EZFS_BADCACHE 206 
#define  EZFS_BADDEV 205 
#define  EZFS_BADPATH 204 
#define  EZFS_BADPERM 203 
#define  EZFS_BADPERMSET 202 
#define  EZFS_BADPROP 201 
#define  EZFS_BADRESTORE 200 
#define  EZFS_BADSTREAM 199 
#define  EZFS_BADTARGET 198 
#define  EZFS_BADTYPE 197 
#define  EZFS_BADVERSION 196 
#define  EZFS_BADWHO 195 
#define  EZFS_BUSY 194 
#define  EZFS_CHECKPOINT_EXISTS 193 
#define  EZFS_CROSSTARGET 192 
#define  EZFS_DEVOVERFLOW 191 
#define  EZFS_DEVRM_IN_PROGRESS 190 
#define  EZFS_DIFF 189 
#define  EZFS_DIFFDATA 188 
#define  EZFS_DISCARDING_CHECKPOINT 187 
#define  EZFS_DSREADONLY 186 
#define  EZFS_EXISTS 185 
#define  EZFS_FAULT 184 
#define  EZFS_INITIALIZING 183 
#define  EZFS_INTR 182 
#define  EZFS_INVALCONFIG 181 
#define  EZFS_INVALIDNAME 180 
#define  EZFS_IO 179 
#define  EZFS_ISL2CACHE 178 
#define  EZFS_ISSPARE 177 
#define  EZFS_LABELFAILED 176 
#define  EZFS_MOUNTFAILED 175 
#define  EZFS_NAMETOOLONG 174 
#define  EZFS_NOCAP 173 
#define  EZFS_NODELEGATION 172 
#define  EZFS_NODEVICE 171 
#define  EZFS_NOENT 170 
#define  EZFS_NOHISTORY 169 
#define  EZFS_NOMEM 168 
#define  EZFS_NOREPLICAS 167 
#define  EZFS_NOSPC 166 
#define  EZFS_NOTSUP 165 
#define  EZFS_NO_CHECKPOINT 164 
#define  EZFS_NO_INITIALIZE 163 
#define  EZFS_NO_PENDING 162 
#define  EZFS_NO_SCRUB 161 
#define  EZFS_OPENFAILED 160 
#define  EZFS_PERM 159 
#define  EZFS_PIPEFAILED 158 
#define  EZFS_POOLPROPS 157 
#define  EZFS_POOLREADONLY 156 
#define  EZFS_POOLUNAVAIL 155 
#define  EZFS_POOL_INVALARG 154 
#define  EZFS_POOL_NOTSUP 153 
#define  EZFS_POSTSPLIT_ONLINE 152 
#define  EZFS_PROPNONINHERIT 151 
#define  EZFS_PROPREADONLY 150 
#define  EZFS_PROPSPACE 149 
#define  EZFS_PROPTYPE 148 
#define  EZFS_RECURSIVE 147 
#define  EZFS_REFTAG_HOLD 146 
#define  EZFS_REFTAG_RELE 145 
#define  EZFS_RESILVERING 144 
#define  EZFS_SCRUBBING 143 
#define  EZFS_SCRUB_PAUSED 142 
#define  EZFS_SHARENFSFAILED 141 
#define  EZFS_SHARESMBFAILED 140 
#define  EZFS_TAGTOOLONG 139 
#define  EZFS_THREADCREATEFAILED 138 
#define  EZFS_TOOMANY 137 
#define  EZFS_UMOUNTFAILED 136 
#define  EZFS_UNKNOWN 135 
#define  EZFS_UNPLAYED_LOGS 134 
#define  EZFS_UNSHARENFSFAILED 133 
#define  EZFS_UNSHARESMBFAILED 132 
#define  EZFS_VDEVNOTSUP 131 
#define  EZFS_VDEV_TOO_BIG 130 
#define  EZFS_VOLTOOBIG 129 
#define  EZFS_ZONED 128 
 int /*<<< orphan*/  TEXT_DOMAIN ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 char const* FUNC1 (int /*<<< orphan*/ ,char*) ; 

const char *
FUNC2(libzfs_handle_t *hdl)
{
	if (hdl->libzfs_desc[0] != '\0')
		return (hdl->libzfs_desc);

	switch (hdl->libzfs_error) {
	case EZFS_NOMEM:
		return (FUNC1(TEXT_DOMAIN, "out of memory"));
	case EZFS_BADPROP:
		return (FUNC1(TEXT_DOMAIN, "invalid property value"));
	case EZFS_PROPREADONLY:
		return (FUNC1(TEXT_DOMAIN, "read-only property"));
	case EZFS_PROPTYPE:
		return (FUNC1(TEXT_DOMAIN, "property doesn't apply to "
		    "datasets of this type"));
	case EZFS_PROPNONINHERIT:
		return (FUNC1(TEXT_DOMAIN, "property cannot be inherited"));
	case EZFS_PROPSPACE:
		return (FUNC1(TEXT_DOMAIN, "invalid quota or reservation"));
	case EZFS_BADTYPE:
		return (FUNC1(TEXT_DOMAIN, "operation not applicable to "
		    "datasets of this type"));
	case EZFS_BUSY:
		return (FUNC1(TEXT_DOMAIN, "pool or dataset is busy"));
	case EZFS_EXISTS:
		return (FUNC1(TEXT_DOMAIN, "pool or dataset exists"));
	case EZFS_NOENT:
		return (FUNC1(TEXT_DOMAIN, "no such pool or dataset"));
	case EZFS_BADSTREAM:
		return (FUNC1(TEXT_DOMAIN, "invalid backup stream"));
	case EZFS_DSREADONLY:
		return (FUNC1(TEXT_DOMAIN, "dataset is read-only"));
	case EZFS_VOLTOOBIG:
		return (FUNC1(TEXT_DOMAIN, "volume size exceeds limit for "
		    "this system"));
	case EZFS_INVALIDNAME:
		return (FUNC1(TEXT_DOMAIN, "invalid name"));
	case EZFS_BADRESTORE:
		return (FUNC1(TEXT_DOMAIN, "unable to restore to "
		    "destination"));
	case EZFS_BADBACKUP:
		return (FUNC1(TEXT_DOMAIN, "backup failed"));
	case EZFS_BADTARGET:
		return (FUNC1(TEXT_DOMAIN, "invalid target vdev"));
	case EZFS_NODEVICE:
		return (FUNC1(TEXT_DOMAIN, "no such device in pool"));
	case EZFS_BADDEV:
		return (FUNC1(TEXT_DOMAIN, "invalid device"));
	case EZFS_NOREPLICAS:
		return (FUNC1(TEXT_DOMAIN, "no valid replicas"));
	case EZFS_RESILVERING:
		return (FUNC1(TEXT_DOMAIN, "currently resilvering"));
	case EZFS_BADVERSION:
		return (FUNC1(TEXT_DOMAIN, "unsupported version or "
		    "feature"));
	case EZFS_POOLUNAVAIL:
		return (FUNC1(TEXT_DOMAIN, "pool is unavailable"));
	case EZFS_DEVOVERFLOW:
		return (FUNC1(TEXT_DOMAIN, "too many devices in one vdev"));
	case EZFS_BADPATH:
		return (FUNC1(TEXT_DOMAIN, "must be an absolute path"));
	case EZFS_CROSSTARGET:
		return (FUNC1(TEXT_DOMAIN, "operation crosses datasets or "
		    "pools"));
	case EZFS_ZONED:
		return (FUNC1(TEXT_DOMAIN, "dataset in use by local zone"));
	case EZFS_MOUNTFAILED:
		return (FUNC1(TEXT_DOMAIN, "mount failed"));
	case EZFS_UMOUNTFAILED:
		return (FUNC1(TEXT_DOMAIN, "umount failed"));
	case EZFS_UNSHARENFSFAILED:
		return (FUNC1(TEXT_DOMAIN, "unshare(1M) failed"));
	case EZFS_SHARENFSFAILED:
		return (FUNC1(TEXT_DOMAIN, "share(1M) failed"));
	case EZFS_UNSHARESMBFAILED:
		return (FUNC1(TEXT_DOMAIN, "smb remove share failed"));
	case EZFS_SHARESMBFAILED:
		return (FUNC1(TEXT_DOMAIN, "smb add share failed"));
	case EZFS_PERM:
		return (FUNC1(TEXT_DOMAIN, "permission denied"));
	case EZFS_NOSPC:
		return (FUNC1(TEXT_DOMAIN, "out of space"));
	case EZFS_FAULT:
		return (FUNC1(TEXT_DOMAIN, "bad address"));
	case EZFS_IO:
		return (FUNC1(TEXT_DOMAIN, "I/O error"));
	case EZFS_INTR:
		return (FUNC1(TEXT_DOMAIN, "signal received"));
	case EZFS_ISSPARE:
		return (FUNC1(TEXT_DOMAIN, "device is reserved as a hot "
		    "spare"));
	case EZFS_INVALCONFIG:
		return (FUNC1(TEXT_DOMAIN, "invalid vdev configuration"));
	case EZFS_RECURSIVE:
		return (FUNC1(TEXT_DOMAIN, "recursive dataset dependency"));
	case EZFS_NOHISTORY:
		return (FUNC1(TEXT_DOMAIN, "no history available"));
	case EZFS_POOLPROPS:
		return (FUNC1(TEXT_DOMAIN, "failed to retrieve "
		    "pool properties"));
	case EZFS_POOL_NOTSUP:
		return (FUNC1(TEXT_DOMAIN, "operation not supported "
		    "on this type of pool"));
	case EZFS_POOL_INVALARG:
		return (FUNC1(TEXT_DOMAIN, "invalid argument for "
		    "this pool operation"));
	case EZFS_NAMETOOLONG:
		return (FUNC1(TEXT_DOMAIN, "dataset name is too long"));
	case EZFS_OPENFAILED:
		return (FUNC1(TEXT_DOMAIN, "open failed"));
	case EZFS_NOCAP:
		return (FUNC1(TEXT_DOMAIN,
		    "disk capacity information could not be retrieved"));
	case EZFS_LABELFAILED:
		return (FUNC1(TEXT_DOMAIN, "write of label failed"));
	case EZFS_BADWHO:
		return (FUNC1(TEXT_DOMAIN, "invalid user/group"));
	case EZFS_BADPERM:
		return (FUNC1(TEXT_DOMAIN, "invalid permission"));
	case EZFS_BADPERMSET:
		return (FUNC1(TEXT_DOMAIN, "invalid permission set name"));
	case EZFS_NODELEGATION:
		return (FUNC1(TEXT_DOMAIN, "delegated administration is "
		    "disabled on pool"));
	case EZFS_BADCACHE:
		return (FUNC1(TEXT_DOMAIN, "invalid or missing cache file"));
	case EZFS_ISL2CACHE:
		return (FUNC1(TEXT_DOMAIN, "device is in use as a cache"));
	case EZFS_VDEVNOTSUP:
		return (FUNC1(TEXT_DOMAIN, "vdev specification is not "
		    "supported"));
	case EZFS_NOTSUP:
		return (FUNC1(TEXT_DOMAIN, "operation not supported "
		    "on this dataset"));
	case EZFS_ACTIVE_SPARE:
		return (FUNC1(TEXT_DOMAIN, "pool has active shared spare "
		    "device"));
	case EZFS_UNPLAYED_LOGS:
		return (FUNC1(TEXT_DOMAIN, "log device has unplayed intent "
		    "logs"));
	case EZFS_REFTAG_RELE:
		return (FUNC1(TEXT_DOMAIN, "no such tag on this dataset"));
	case EZFS_REFTAG_HOLD:
		return (FUNC1(TEXT_DOMAIN, "tag already exists on this "
		    "dataset"));
	case EZFS_TAGTOOLONG:
		return (FUNC1(TEXT_DOMAIN, "tag too long"));
	case EZFS_PIPEFAILED:
		return (FUNC1(TEXT_DOMAIN, "pipe create failed"));
	case EZFS_THREADCREATEFAILED:
		return (FUNC1(TEXT_DOMAIN, "thread create failed"));
	case EZFS_POSTSPLIT_ONLINE:
		return (FUNC1(TEXT_DOMAIN, "disk was split from this pool "
		    "into a new one"));
	case EZFS_SCRUB_PAUSED:
		return (FUNC1(TEXT_DOMAIN, "scrub is paused; "
		    "use 'zpool scrub' to resume"));
	case EZFS_SCRUBBING:
		return (FUNC1(TEXT_DOMAIN, "currently scrubbing; "
		    "use 'zpool scrub -s' to cancel current scrub"));
	case EZFS_NO_SCRUB:
		return (FUNC1(TEXT_DOMAIN, "there is no active scrub"));
	case EZFS_DIFF:
		return (FUNC1(TEXT_DOMAIN, "unable to generate diffs"));
	case EZFS_DIFFDATA:
		return (FUNC1(TEXT_DOMAIN, "invalid diff data"));
	case EZFS_POOLREADONLY:
		return (FUNC1(TEXT_DOMAIN, "pool is read-only"));
	case EZFS_NO_PENDING:
		return (FUNC1(TEXT_DOMAIN, "operation is not "
		    "in progress"));
	case EZFS_CHECKPOINT_EXISTS:
		return (FUNC1(TEXT_DOMAIN, "checkpoint exists"));
	case EZFS_DISCARDING_CHECKPOINT:
		return (FUNC1(TEXT_DOMAIN, "currently discarding "
		    "checkpoint"));
	case EZFS_NO_CHECKPOINT:
		return (FUNC1(TEXT_DOMAIN, "checkpoint does not exist"));
	case EZFS_DEVRM_IN_PROGRESS:
		return (FUNC1(TEXT_DOMAIN, "device removal in progress"));
	case EZFS_VDEV_TOO_BIG:
		return (FUNC1(TEXT_DOMAIN, "device exceeds supported size"));
	case EZFS_TOOMANY:
		return (FUNC1(TEXT_DOMAIN, "argument list too long"));
	case EZFS_INITIALIZING:
		return (FUNC1(TEXT_DOMAIN, "currently initializing"));
	case EZFS_NO_INITIALIZE:
		return (FUNC1(TEXT_DOMAIN, "there is no active "
		    "initialization"));
	case EZFS_UNKNOWN:
		return (FUNC1(TEXT_DOMAIN, "unknown error"));
	default:
		FUNC0(hdl->libzfs_error == 0);
		return (FUNC1(TEXT_DOMAIN, "no error"));
	}
}