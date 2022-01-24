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

/* Variables and functions */
 int FUNC0 (struct hidp_session*,unsigned char,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct hidp_session*) ; 

__attribute__((used)) static inline int FUNC2(struct hidp_session *session,
			unsigned char hdr, unsigned char *data, int size)
{
	int err;

	err = FUNC0(session, hdr, data, size);

	FUNC1(session);

	return err;
}