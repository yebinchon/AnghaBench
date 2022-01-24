#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct timeval {long tv_sec; } ;
struct cred {long uid; long gid; } ;
struct core_name {int size; int /*<<< orphan*/  corename; scalar_t__ used; } ;
struct TYPE_5__ {long comm; } ;
struct TYPE_4__ {long nodename; } ;

/* Variables and functions */
 int CORENAME_MAX_SIZE ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  RLIMIT_CORE ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  call_count ; 
 int FUNC1 (struct core_name*) ; 
 int FUNC2 (struct core_name*,char*,long) ; 
 char* core_pattern ; 
 scalar_t__ core_uses_pid ; 
 TYPE_2__* current ; 
 struct cred* FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct timeval*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ ) ; 
 long FUNC7 (int /*<<< orphan*/ ) ; 
 long FUNC8 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  uts_sem ; 
 TYPE_1__* FUNC10 () ; 

__attribute__((used)) static int FUNC11(struct core_name *cn, long signr)
{
	const struct cred *cred = FUNC3();
	const char *pat_ptr = core_pattern;
	int ispipe = (*pat_ptr == '|');
	int pid_in_pattern = 0;

	int err = 0;

	cn->size = CORENAME_MAX_SIZE * FUNC0(&call_count);
	cn->corename = FUNC6(cn->size, GFP_KERNEL);
	cn->used = 0;

	if (!cn->corename)
		return -ENOMEM;

	/* Repeat as long as we have more pattern to process and more output
	   space */
	while (*pat_ptr) {
		if (*pat_ptr != '%') {
			if (*pat_ptr == 0)
				goto out;
			err = FUNC2(cn, "%c", *pat_ptr++);
		} else {
			switch (*++pat_ptr) {
			/* single % at the end, drop that */
			case 0:
				goto out;
			/* Double percent, output one percent */
			case '%':
				err = FUNC2(cn, "%c", '%');
				break;
			/* pid */
			case 'p':
				pid_in_pattern = 1;
				err = FUNC2(cn, "%d",
					      FUNC8(current));
				break;
			/* uid */
			case 'u':
				err = FUNC2(cn, "%d", cred->uid);
				break;
			/* gid */
			case 'g':
				err = FUNC2(cn, "%d", cred->gid);
				break;
			/* signal that caused the coredump */
			case 's':
				err = FUNC2(cn, "%ld", signr);
				break;
			/* UNIX time of coredump */
			case 't': {
				struct timeval tv;
				FUNC4(&tv);
				err = FUNC2(cn, "%lu", tv.tv_sec);
				break;
			}
			/* hostname */
			case 'h':
				FUNC5(&uts_sem);
				err = FUNC2(cn, "%s",
					      FUNC10()->nodename);
				FUNC9(&uts_sem);
				break;
			/* executable */
			case 'e':
				err = FUNC2(cn, "%s", current->comm);
				break;
			case 'E':
				err = FUNC1(cn);
				break;
			/* core limit size */
			case 'c':
				err = FUNC2(cn, "%lu",
					      FUNC7(RLIMIT_CORE));
				break;
			default:
				break;
			}
			++pat_ptr;
		}

		if (err)
			return err;
	}
	/* Backward compatibility with core_uses_pid:
	 *
	 * If core_pattern does not include a %p (as is the default)
	 * and core_uses_pid is set, then .%pid will be appended to
	 * the filename. Do not do this for piped commands. */
	if (!ispipe && !pid_in_pattern && core_uses_pid) {
		err = FUNC2(cn, ".%d", FUNC8(current));
		if (err)
			return err;
	}
out:
	return ispipe;
}