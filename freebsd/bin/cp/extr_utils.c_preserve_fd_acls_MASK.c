#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  acl_type_t ;
typedef  int /*<<< orphan*/ * acl_t ;
struct TYPE_2__ {int /*<<< orphan*/  p_path; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACL_TYPE_ACCESS ; 
 int /*<<< orphan*/  ACL_TYPE_NFS4 ; 
 scalar_t__ EINVAL ; 
 int /*<<< orphan*/  _PC_ACL_EXTENDED ; 
 int /*<<< orphan*/  _PC_ACL_NFS4 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int*) ; 
 scalar_t__ FUNC3 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ errno ; 
 int FUNC4 (int,int /*<<< orphan*/ ) ; 
 TYPE_1__ to ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 

int
FUNC6(int source_fd, int dest_fd)
{
	acl_t acl;
	acl_type_t acl_type;
	int acl_supported = 0, ret, trivial;

	ret = FUNC4(source_fd, _PC_ACL_NFS4);
	if (ret > 0 ) {
		acl_supported = 1;
		acl_type = ACL_TYPE_NFS4;
	} else if (ret < 0 && errno != EINVAL) {
		FUNC5("fpathconf(..., _PC_ACL_NFS4) failed for %s", to.p_path);
		return (1);
	}
	if (acl_supported == 0) {
		ret = FUNC4(source_fd, _PC_ACL_EXTENDED);
		if (ret > 0 ) {
			acl_supported = 1;
			acl_type = ACL_TYPE_ACCESS;
		} else if (ret < 0 && errno != EINVAL) {
			FUNC5("fpathconf(..., _PC_ACL_EXTENDED) failed for %s",
			    to.p_path);
			return (1);
		}
	}
	if (acl_supported == 0)
		return (0);

	acl = FUNC1(source_fd, acl_type);
	if (acl == NULL) {
		FUNC5("failed to get acl entries while setting %s", to.p_path);
		return (1);
	}
	if (FUNC2(acl, &trivial)) {
		FUNC5("acl_is_trivial() failed for %s", to.p_path);
		FUNC0(acl);
		return (1);
	}
	if (trivial) {
		FUNC0(acl);
		return (0);
	}
	if (FUNC3(dest_fd, acl, acl_type) < 0) {
		FUNC5("failed to set acl entries for %s", to.p_path);
		FUNC0(acl);
		return (1);
	}
	FUNC0(acl);
	return (0);
}