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
typedef  scalar_t__ u8 ;
struct tomoyo_io_buffer {char* write_buf; } ;
struct tomoyo_domain_info {scalar_t__ profile; } ;

/* Variables and functions */
 int EINVAL ; 
 unsigned long TOMOYO_MAX_PROFILES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 char* FUNC1 (char*,char) ; 
 scalar_t__ FUNC2 (char*,int,unsigned long*) ; 
 int /*<<< orphan*/  tomoyo_domain_list_lock ; 
 struct tomoyo_domain_info* FUNC3 (char*) ; 
 int /*<<< orphan*/  tomoyo_policy_loaded ; 
 scalar_t__* tomoyo_profile_ptr ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct tomoyo_io_buffer *head)
{
	char *data = head->write_buf;
	char *cp = FUNC1(data, ' ');
	struct tomoyo_domain_info *domain;
	unsigned long profile;

	if (!cp)
		return -EINVAL;
	*cp = '\0';
	FUNC0(&tomoyo_domain_list_lock);
	domain = FUNC3(cp + 1);
	FUNC4(&tomoyo_domain_list_lock);
	if (FUNC2(data, 10, &profile))
		return -EINVAL;
	if (domain && profile < TOMOYO_MAX_PROFILES
	    && (tomoyo_profile_ptr[profile] || !tomoyo_policy_loaded))
		domain->profile = (u8) profile;
	return 0;
}