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
struct xfs_mount {scalar_t__ m_fsname; } ;
struct va_format {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char const*,struct va_format*,...) ; 

__attribute__((used)) static void
FUNC1(
	const char		*level,
	const struct xfs_mount	*mp,
	struct va_format	*vaf)
{
	if (mp && mp->m_fsname) {
		FUNC0("%sXFS (%s): %pV\n", level, mp->m_fsname, vaf);
		return;
	}
	FUNC0("%sXFS: %pV\n", level, vaf);
}