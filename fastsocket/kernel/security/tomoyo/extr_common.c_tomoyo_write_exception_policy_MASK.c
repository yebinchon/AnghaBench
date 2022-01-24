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
struct tomoyo_io_buffer {char* write_buf; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  TOMOYO_KEYWORD_ALIAS ; 
 int /*<<< orphan*/  TOMOYO_KEYWORD_ALLOW_READ ; 
 int /*<<< orphan*/  TOMOYO_KEYWORD_DELETE ; 
 int /*<<< orphan*/  TOMOYO_KEYWORD_DENY_REWRITE ; 
 int /*<<< orphan*/  TOMOYO_KEYWORD_FILE_PATTERN ; 
 int /*<<< orphan*/  TOMOYO_KEYWORD_INITIALIZE_DOMAIN ; 
 int /*<<< orphan*/  TOMOYO_KEYWORD_KEEP_DOMAIN ; 
 int /*<<< orphan*/  TOMOYO_KEYWORD_NO_INITIALIZE_DOMAIN ; 
 int /*<<< orphan*/  TOMOYO_KEYWORD_NO_KEEP_DOMAIN ; 
 int FUNC0 (char**,int /*<<< orphan*/ ) ; 
 int FUNC1 (char*,int) ; 
 int FUNC2 (char*,int,int) ; 
 int FUNC3 (char*,int,int) ; 
 int FUNC4 (char*,int) ; 
 int FUNC5 (char*,int) ; 
 int FUNC6 (char*,int) ; 

__attribute__((used)) static int FUNC7(struct tomoyo_io_buffer *head)
{
	char *data = head->write_buf;
	bool is_delete = FUNC0(&data, TOMOYO_KEYWORD_DELETE);

	if (FUNC0(&data, TOMOYO_KEYWORD_KEEP_DOMAIN))
		return FUNC3(data, false,
							 is_delete);
	if (FUNC0(&data, TOMOYO_KEYWORD_NO_KEEP_DOMAIN))
		return FUNC3(data, true, is_delete);
	if (FUNC0(&data, TOMOYO_KEYWORD_INITIALIZE_DOMAIN))
		return FUNC2(data, false,
							      is_delete);
	if (FUNC0(&data, TOMOYO_KEYWORD_NO_INITIALIZE_DOMAIN))
		return FUNC2(data, true,
							      is_delete);
	if (FUNC0(&data, TOMOYO_KEYWORD_ALIAS))
		return FUNC1(data, is_delete);
	if (FUNC0(&data, TOMOYO_KEYWORD_ALLOW_READ))
		return FUNC4(data, is_delete);
	if (FUNC0(&data, TOMOYO_KEYWORD_FILE_PATTERN))
		return FUNC6(data, is_delete);
	if (FUNC0(&data, TOMOYO_KEYWORD_DENY_REWRITE))
		return FUNC5(data, is_delete);
	return -EINVAL;
}