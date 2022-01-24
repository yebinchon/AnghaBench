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
 int /*<<< orphan*/  TOMOYO_KEYWORD_DELETE ; 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int tomoyo_manage_by_non_root ; 
 int FUNC1 (char**,int /*<<< orphan*/ ) ; 
 int FUNC2 (char*,int) ; 

__attribute__((used)) static int FUNC3(struct tomoyo_io_buffer *head)
{
	char *data = head->write_buf;
	bool is_delete = FUNC1(&data, TOMOYO_KEYWORD_DELETE);

	if (!FUNC0(data, "manage_by_non_root")) {
		tomoyo_manage_by_non_root = !is_delete;
		return 0;
	}
	return FUNC2(data, is_delete);
}