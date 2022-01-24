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
struct iattr {int ia_valid; int /*<<< orphan*/  ia_mtime; int /*<<< orphan*/  ia_atime; int /*<<< orphan*/  ia_size; int /*<<< orphan*/  ia_gid; int /*<<< orphan*/  ia_uid; int /*<<< orphan*/  ia_mode; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int ATTR_ATIME ; 
 int ATTR_ATIME_SET ; 
 int ATTR_GID ; 
 int ATTR_MODE ; 
 int ATTR_MTIME ; 
 int ATTR_MTIME_SET ; 
 int ATTR_SIZE ; 
 int ATTR_UID ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  const FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline __be32 *
FUNC4(__be32 *p, struct iattr *attr)
{
	const __be32 not_set = FUNC0(0xFFFFFFFF);

	*p++ = (attr->ia_valid & ATTR_MODE) ? FUNC1(attr->ia_mode) : not_set;
	*p++ = (attr->ia_valid & ATTR_UID) ? FUNC1(attr->ia_uid) : not_set;
	*p++ = (attr->ia_valid & ATTR_GID) ? FUNC1(attr->ia_gid) : not_set;
	*p++ = (attr->ia_valid & ATTR_SIZE) ? FUNC1(attr->ia_size) : not_set;

	if (attr->ia_valid & ATTR_ATIME_SET) {
		p = FUNC3(p, &attr->ia_atime);
	} else if (attr->ia_valid & ATTR_ATIME) {
		p = FUNC2(p, &attr->ia_atime);
	} else {
		*p++ = not_set;
		*p++ = not_set;
	}

	if (attr->ia_valid & ATTR_MTIME_SET) {
		p = FUNC3(p, &attr->ia_mtime);
	} else if (attr->ia_valid & ATTR_MTIME) {
		p = FUNC2(p, &attr->ia_mtime);
	} else {
		*p++ = not_set;	
		*p++ = not_set;
	}
  	return p;
}