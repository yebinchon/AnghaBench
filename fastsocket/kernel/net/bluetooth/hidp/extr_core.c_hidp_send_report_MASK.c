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
struct hidp_session {int dummy; } ;
struct hid_report {int size; scalar_t__ id; } ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (struct hid_report*,unsigned char*) ; 
 int FUNC1 (struct hidp_session*,unsigned char*,int) ; 

__attribute__((used)) static int FUNC2(struct hidp_session *session, struct hid_report *report)
{
	unsigned char buf[32];
	int rsize;

	rsize = ((report->size - 1) >> 3) + 1 + (report->id > 0);
	if (rsize > sizeof(buf))
		return -EIO;

	FUNC0(report, buf);

	return FUNC1(session, buf, rsize);
}