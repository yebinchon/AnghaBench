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
struct file {int f_flags; } ;
typedef  int ssize_t ;
typedef  unsigned int loff_t ;

/* Variables and functions */
 int EAGAIN ; 
 int EINTR ; 
 size_t KEYPAD_BUFFER ; 
 int O_NONBLOCK ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * keypad_buffer ; 
 scalar_t__ keypad_buflen ; 
 int /*<<< orphan*/  keypad_read_wait ; 
 size_t keypad_start ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static ssize_t FUNC3(struct file *file,
			   char *buf, size_t count, loff_t *ppos)
{

	unsigned i = *ppos;
	char *tmp = buf;

	if (keypad_buflen == 0) {
		if (file->f_flags & O_NONBLOCK)
			return -EAGAIN;

		FUNC0(&keypad_read_wait);
		if (FUNC2(current))
			return -EINTR;
	}

	for (; count-- > 0 && (keypad_buflen > 0); ++i, ++tmp, --keypad_buflen) {
		FUNC1(keypad_buffer[keypad_start], tmp);
		keypad_start = (keypad_start + 1) % KEYPAD_BUFFER;
	}
	*ppos = i;

	return tmp - buf;
}