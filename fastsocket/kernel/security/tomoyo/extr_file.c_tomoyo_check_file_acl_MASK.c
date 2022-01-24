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
typedef  int u8 ;
typedef  int u16 ;
struct tomoyo_path_info {int dummy; } ;
struct tomoyo_domain_info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  TOMOYO_MAC_FOR_FILE ; 
 int TOMOYO_TYPE_EXECUTE_ACL ; 
 int TOMOYO_TYPE_READ_ACL ; 
 int TOMOYO_TYPE_READ_WRITE_ACL ; 
 int TOMOYO_TYPE_WRITE_ACL ; 
 int /*<<< orphan*/  FUNC1 (struct tomoyo_domain_info const*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct tomoyo_domain_info const*,struct tomoyo_path_info const*,int,int) ; 

__attribute__((used)) static int FUNC3(const struct tomoyo_domain_info *domain,
				 const struct tomoyo_path_info *filename,
				 const u8 operation)
{
	u16 perm = 0;

	if (!FUNC1(domain, TOMOYO_MAC_FOR_FILE))
		return 0;
	if (operation == 6)
		perm = 1 << TOMOYO_TYPE_READ_WRITE_ACL;
	else if (operation == 4)
		perm = 1 << TOMOYO_TYPE_READ_ACL;
	else if (operation == 2)
		perm = 1 << TOMOYO_TYPE_WRITE_ACL;
	else if (operation == 1)
		perm = 1 << TOMOYO_TYPE_EXECUTE_ACL;
	else
		FUNC0();
	return FUNC2(domain, filename, perm,
					     operation != 1);
}