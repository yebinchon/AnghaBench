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
struct stat {int /*<<< orphan*/  st_gid; int /*<<< orphan*/  st_uid; } ;
typedef  scalar_t__ acl_type_t ;
typedef  char* acl_t ;

/* Variables and functions */
 int ACL_TEXT_APPEND_ID ; 
 int ACL_TEXT_NUMERIC_IDS ; 
 int ACL_TEXT_VERBOSE ; 
 scalar_t__ ACL_TYPE_DEFAULT ; 
 scalar_t__ ACL_TYPE_NFS4 ; 
 scalar_t__ EINVAL ; 
 scalar_t__ EOPNOTSUPP ; 
 int /*<<< orphan*/  _PC_ACL_NFS4 ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (struct stat*) ; 
 char* FUNC2 (char*,scalar_t__) ; 
 char* FUNC3 (char*,scalar_t__) ; 
 char* FUNC4 (char*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ errno ; 
 char* FUNC5 (int /*<<< orphan*/ ) ; 
 char* FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (char*,int /*<<< orphan*/ ) ; 
 int FUNC8 (char*,struct stat*) ; 
 scalar_t__ more_than_one ; 
 int FUNC9 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*,...) ; 
 int FUNC11 (char*,struct stat*) ; 
 int /*<<< orphan*/  FUNC12 (char*,char*) ; 
 int /*<<< orphan*/  FUNC13 (char*,char*) ; 

__attribute__((used)) static int
FUNC14(char *path, acl_type_t type, int hflag, int iflag, int nflag,
    int qflag, int vflag)
{
	struct stat	sb;
	acl_t	acl;
	char	*acl_text;
	int	error, flags = 0, ret;

	if (hflag)
		error = FUNC8(path, &sb);
	else
		error = FUNC11(path, &sb);
	if (error == -1) {
		FUNC12("%s: stat() failed", path);
		return(-1);
	}

	if (hflag)
		ret = FUNC7(path, _PC_ACL_NFS4);
	else
		ret = FUNC9(path, _PC_ACL_NFS4);
	if (ret > 0) {
		if (type == ACL_TYPE_DEFAULT) {
			FUNC13("%s: there are no default entries in NFSv4 ACLs",
			    path);
			return (-1);
		}
		type = ACL_TYPE_NFS4;
	} else if (ret < 0 && errno != EINVAL) {
		FUNC12("%s: pathconf(..., _PC_ACL_NFS4) failed", path);
		return (-1);
	}

	if (more_than_one)
		FUNC10("\n");
	else
		more_than_one++;

	if (!qflag)
		FUNC10("# file: %s\n# owner: %s\n# group: %s\n", path,
		    FUNC6(sb.st_uid), FUNC5(sb.st_gid));

	if (hflag)
		acl = FUNC3(path, type);
	else
		acl = FUNC2(path, type);
	if (!acl) {
		if (errno != EOPNOTSUPP) {
			FUNC12("%s", path);
			return(-1);
		}
		errno = 0;
		if (type == ACL_TYPE_DEFAULT)
			return(0);
		acl = FUNC1(&sb);
		if (!acl) {
			FUNC12("%s: acl_from_stat() failed", path);
			return(-1);
		}
	}

	if (iflag)
		flags |= ACL_TEXT_APPEND_ID;

	if (nflag)
		flags |= ACL_TEXT_NUMERIC_IDS;

	if (vflag)
		flags |= ACL_TEXT_VERBOSE;

	acl_text = FUNC4(acl, 0, flags);
	if (!acl_text) {
		FUNC12("%s: acl_to_text_np() failed", path);
		return(-1);
	}

	FUNC10("%s", acl_text);

	(void)FUNC0(acl);
	(void)FUNC0(acl_text);

	return(0);
}