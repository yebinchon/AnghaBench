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
struct pevent {int dummy; } ;
typedef  enum pevent_errno { ____Placeholder_pevent_errno } pevent_errno ;

/* Variables and functions */
#define  PEVENT_ERRNO__MEM_ALLOC_FAILED 133 
#define  PEVENT_ERRNO__OLD_FTRACE_ARG_FAILED 132 
#define  PEVENT_ERRNO__PARSE_EVENT_FAILED 131 
#define  PEVENT_ERRNO__READ_FORMAT_FAILED 130 
#define  PEVENT_ERRNO__READ_ID_FAILED 129 
#define  PEVENT_ERRNO__READ_PRINT_FAILED 128 
 int __PEVENT_ERRNO__END ; 
 int __PEVENT_ERRNO__START ; 
 int /*<<< orphan*/  FUNC0 (char*,char const*,int) ; 
 int FUNC1 (size_t,size_t) ; 
 char** pevent_error_str ; 
 int /*<<< orphan*/  FUNC2 (char*,size_t,char*,char const*) ; 
 char* FUNC3 (int,char*,size_t) ; 
 size_t FUNC4 (char const*) ; 

int FUNC5(struct pevent *pevent, enum pevent_errno errnum,
		    char *buf, size_t buflen)
{
	int idx;
	const char *msg;

	if (errnum >= 0) {
		msg = FUNC3(errnum, buf, buflen);
		if (msg != buf) {
			size_t len = FUNC4(msg);
			FUNC0(buf, msg, FUNC1(buflen - 1, len));
			*(buf + FUNC1(buflen - 1, len)) = '\0';
		}
		return 0;
	}

	if (errnum <= __PEVENT_ERRNO__START ||
	    errnum >= __PEVENT_ERRNO__END)
		return -1;

	idx = errnum - __PEVENT_ERRNO__START - 1;
	msg = pevent_error_str[idx];

	switch (errnum) {
	case PEVENT_ERRNO__MEM_ALLOC_FAILED:
	case PEVENT_ERRNO__PARSE_EVENT_FAILED:
	case PEVENT_ERRNO__READ_ID_FAILED:
	case PEVENT_ERRNO__READ_FORMAT_FAILED:
	case PEVENT_ERRNO__READ_PRINT_FAILED:
	case PEVENT_ERRNO__OLD_FTRACE_ARG_FAILED:
		FUNC2(buf, buflen, "%s", msg);
		break;

	default:
		/* cannot reach here */
		break;
	}

	return 0;
}