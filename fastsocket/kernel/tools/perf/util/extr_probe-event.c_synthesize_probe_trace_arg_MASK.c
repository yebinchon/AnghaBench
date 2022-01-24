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
struct probe_trace_arg_ref {int /*<<< orphan*/  offset; struct probe_trace_arg_ref* next; } ;
struct probe_trace_arg {char* name; char* value; char* type; struct probe_trace_arg_ref* ref; } ;

/* Variables and functions */
 int FUNC0 (struct probe_trace_arg_ref*,char**,size_t*,int) ; 
 int FUNC1 (char*,size_t,char*,...) ; 

__attribute__((used)) static int FUNC2(struct probe_trace_arg *arg,
				       char *buf, size_t buflen)
{
	struct probe_trace_arg_ref *ref = arg->ref;
	int ret, depth = 0;
	char *tmp = buf;

	/* Argument name or separator */
	if (arg->name)
		ret = FUNC1(buf, buflen, " %s=", arg->name);
	else
		ret = FUNC1(buf, buflen, " ");
	if (ret < 0)
		return ret;
	buf += ret;
	buflen -= ret;

	/* Special case: @XXX */
	if (arg->value[0] == '@' && arg->ref)
			ref = ref->next;

	/* Dereferencing arguments */
	if (ref) {
		depth = FUNC0(ref, &buf,
							  &buflen, 1);
		if (depth < 0)
			return depth;
	}

	/* Print argument value */
	if (arg->value[0] == '@' && arg->ref)
		ret = FUNC1(buf, buflen, "%s%+ld", arg->value,
				 arg->ref->offset);
	else
		ret = FUNC1(buf, buflen, "%s", arg->value);
	if (ret < 0)
		return ret;
	buf += ret;
	buflen -= ret;

	/* Closing */
	while (depth--) {
		ret = FUNC1(buf, buflen, ")");
		if (ret < 0)
			return ret;
		buf += ret;
		buflen -= ret;
	}
	/* Print argument type */
	if (arg->type) {
		ret = FUNC1(buf, buflen, ":%s", arg->type);
		if (ret <= 0)
			return ret;
		buf += ret;
	}

	return buf - tmp;
}