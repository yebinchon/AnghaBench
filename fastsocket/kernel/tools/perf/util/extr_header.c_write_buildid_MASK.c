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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u16 ;
struct TYPE_2__ {int size; int /*<<< orphan*/  misc; } ;
struct build_id_event {TYPE_1__ header; int /*<<< orphan*/  pid; int /*<<< orphan*/  build_id; } ;
typedef  int /*<<< orphan*/  pid_t ;
typedef  int /*<<< orphan*/  b ;

/* Variables and functions */
 int /*<<< orphan*/  BUILD_ID_SIZE ; 
 int /*<<< orphan*/  NAME_ALIGN ; 
 size_t FUNC0 (size_t,int /*<<< orphan*/ ) ; 
 int FUNC1 (int,struct build_id_event*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct build_id_event*,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (int,char*,size_t,size_t) ; 

__attribute__((used)) static int FUNC5(char *name, size_t name_len, u8 *build_id,
			 pid_t pid, u16 misc, int fd)
{
	int err;
	struct build_id_event b;
	size_t len;

	len = name_len + 1;
	len = FUNC0(len, NAME_ALIGN);

	FUNC3(&b, 0, sizeof(b));
	FUNC2(&b.build_id, build_id, BUILD_ID_SIZE);
	b.pid = pid;
	b.header.misc = misc;
	b.header.size = sizeof(b) + len;

	err = FUNC1(fd, &b, sizeof(b));
	if (err < 0)
		return err;

	return FUNC4(fd, name, name_len + 1, len);
}