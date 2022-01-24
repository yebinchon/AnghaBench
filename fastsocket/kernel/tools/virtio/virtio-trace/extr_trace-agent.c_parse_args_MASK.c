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
struct agent_info {int use_stdout; unsigned long pipe_size; } ;

/* Variables and functions */
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int /*<<< orphan*/  FUNC0 (struct agent_info*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int,char**,char*) ; 
 int /*<<< orphan*/  optarg ; 
 unsigned long FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

__attribute__((used)) static void *FUNC5(int argc, char *argv[], struct agent_info *s)
{
	int cmd;
	unsigned long size;

	while ((cmd = FUNC2(argc, argv, "hos:")) != -1) {
		switch (cmd) {
		/* stdout mode */
		case 'o':
			s->use_stdout = true;
			break;
		/* size of pipe */
		case 's':
			size = FUNC3(optarg);
			if (size == 0)
				goto error;
			s->pipe_size = size;
			break;
		case 'h':
		default:
			FUNC4(argv[0]);
			goto error;
		}
	}

	FUNC0(s);

	return NULL;

error:
	FUNC1(EXIT_FAILURE);
}