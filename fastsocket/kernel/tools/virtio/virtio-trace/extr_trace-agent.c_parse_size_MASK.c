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

/* Variables and functions */
 int PAGE_SIZE ; 
 unsigned long PIPE_MAX_SIZE ; 
 unsigned long PIPE_MIN_SIZE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 unsigned long FUNC1 (char const*,char**,int) ; 

__attribute__((used)) static unsigned long FUNC2(const char *arg)
{
	unsigned long value, round;
	char *ptr;

	value = FUNC1(arg, &ptr, 10);
	switch (*ptr) {
	case 'K': case 'k':
		value <<= 10;
		break;
	case 'M': case 'm':
		value <<= 20;
		break;
	default:
		break;
	}

	if (value > PIPE_MAX_SIZE) {
		FUNC0("Pipe size must be less than 1MB\n");
		goto error;
	} else if (value < PIPE_MIN_SIZE) {
		FUNC0("Pipe size must be over 64KB\n");
		goto error;
	}

	/* Align buffer size with page unit */
	round = value & (PAGE_SIZE - 1);
	value = value - round;

	return value;
error:
	return 0;
}