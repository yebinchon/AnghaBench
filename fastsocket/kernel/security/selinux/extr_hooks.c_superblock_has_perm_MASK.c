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
typedef  int /*<<< orphan*/  u32 ;
struct superblock_security_struct {int /*<<< orphan*/  sid; } ;
struct super_block {struct superblock_security_struct* s_security; } ;
struct cred {int dummy; } ;
struct common_audit_data {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  SECCLASS_FILESYSTEM ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct common_audit_data*) ; 
 int /*<<< orphan*/  FUNC1 (struct cred const*) ; 

__attribute__((used)) static int FUNC2(const struct cred *cred,
			       struct super_block *sb,
			       u32 perms,
			       struct common_audit_data *ad)
{
	struct superblock_security_struct *sbsec;
	u32 sid = FUNC1(cred);

	sbsec = sb->s_security;
	return FUNC0(sid, sbsec->sid, SECCLASS_FILESYSTEM, perms, ad);
}