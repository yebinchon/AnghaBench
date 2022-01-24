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
struct tomoyo_profile {unsigned int* value; struct tomoyo_path_info const* comment; } ;
struct tomoyo_path_info {int dummy; } ;
struct tomoyo_io_buffer {char* write_buf; } ;
struct TYPE_2__ {char const* keyword; unsigned int max_value; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 unsigned int TOMOYO_MAX_CONTROL_INDEX ; 
#define  TOMOYO_VERBOSE 128 
 int FUNC0 (char*,char*,unsigned int*) ; 
 char* FUNC1 (char*,char) ; 
 scalar_t__ FUNC2 (char*,char const*) ; 
 scalar_t__ FUNC3 (char*,int,unsigned long*) ; 
 TYPE_1__* tomoyo_control_array ; 
 struct tomoyo_profile* FUNC4 (unsigned long) ; 
 char** tomoyo_mode_2 ; 
 char** tomoyo_mode_4 ; 
 struct tomoyo_path_info* FUNC5 (char*) ; 

__attribute__((used)) static int FUNC6(struct tomoyo_io_buffer *head)
{
	char *data = head->write_buf;
	unsigned int i;
	unsigned int value;
	char *cp;
	struct tomoyo_profile *profile;
	unsigned long num;

	cp = FUNC1(data, '-');
	if (cp)
		*cp = '\0';
	if (FUNC3(data, 10, &num))
		return -EINVAL;
	if (cp)
		data = cp + 1;
	profile = FUNC4(num);
	if (!profile)
		return -EINVAL;
	cp = FUNC1(data, '=');
	if (!cp)
		return -EINVAL;
	*cp = '\0';
	if (!FUNC2(data, "COMMENT")) {
		const struct tomoyo_path_info *new_comment
			= FUNC5(cp + 1);
		if (!new_comment)
			return -ENOMEM;
		profile->comment = new_comment;
		return 0;
	}
	for (i = 0; i < TOMOYO_MAX_CONTROL_INDEX; i++) {
		if (FUNC2(data, tomoyo_control_array[i].keyword))
			continue;
		if (FUNC0(cp + 1, "%u", &value) != 1) {
			int j;
			const char **modes;
			switch (i) {
			case TOMOYO_VERBOSE:
				modes = tomoyo_mode_2;
				break;
			default:
				modes = tomoyo_mode_4;
				break;
			}
			for (j = 0; j < 4; j++) {
				if (FUNC2(cp + 1, modes[j]))
					continue;
				value = j;
				break;
			}
			if (j == 4)
				return -EINVAL;
		} else if (value > tomoyo_control_array[i].max_value) {
			value = tomoyo_control_array[i].max_value;
		}
		profile->value[i] = value;
		return 0;
	}
	return -EINVAL;
}