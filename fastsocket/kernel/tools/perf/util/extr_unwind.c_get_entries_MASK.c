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
typedef  int /*<<< orphan*/  unwind_entry_cb_t ;
typedef  int /*<<< orphan*/  unw_word_t ;
typedef  int /*<<< orphan*/  unw_cursor_t ;
typedef  int /*<<< orphan*/  unw_addr_space_t ;
struct unwind_info {int /*<<< orphan*/  machine; int /*<<< orphan*/  thread; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  UNW_REG_IP ; 
 int /*<<< orphan*/  accessors ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct unwind_info*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct unwind_info *ui, unwind_entry_cb_t cb,
		       void *arg)
{
	unw_addr_space_t addr_space;
	unw_cursor_t c;
	int ret;

	addr_space = FUNC3(&accessors, 0);
	if (!addr_space) {
		FUNC2("unwind: Can't create unwind address space.\n");
		return -ENOMEM;
	}

	ret = FUNC6(&c, addr_space, ui);
	if (ret)
		FUNC0(ret);

	while (!ret && (FUNC7(&c) > 0)) {
		unw_word_t ip;

		FUNC5(&c, UNW_REG_IP, &ip);
		ret = FUNC1(ip, ui->thread, ui->machine, cb, arg);
	}

	FUNC4(addr_space);
	return ret;
}