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
struct trace_seq {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  RINGBUF_TYPE_DATA_TYPE_LEN_MAX ; 
 int /*<<< orphan*/  RINGBUF_TYPE_PADDING ; 
 int /*<<< orphan*/  RINGBUF_TYPE_TIME_EXTEND ; 
 int FUNC0 (struct trace_seq*,char*,...) ; 

int FUNC1(struct trace_seq *s)
{
	int ret;

	ret = FUNC0(s, "# compressed entry header\n");
	ret = FUNC0(s, "\ttype_len    :    5 bits\n");
	ret = FUNC0(s, "\ttime_delta  :   27 bits\n");
	ret = FUNC0(s, "\tarray       :   32 bits\n");
	ret = FUNC0(s, "\n");
	ret = FUNC0(s, "\tpadding     : type == %d\n",
			       RINGBUF_TYPE_PADDING);
	ret = FUNC0(s, "\ttime_extend : type == %d\n",
			       RINGBUF_TYPE_TIME_EXTEND);
	ret = FUNC0(s, "\tdata max type_len  == %d\n",
			       RINGBUF_TYPE_DATA_TYPE_LEN_MAX);

	return ret;
}