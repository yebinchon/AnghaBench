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
struct input_dev {int dummy; } ;
struct hidp_session {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct hidp_session*,struct input_dev*,unsigned int,unsigned int,int) ; 
 struct hidp_session* FUNC1 (struct input_dev*) ; 

__attribute__((used)) static int FUNC2(struct input_dev *dev, unsigned int type, unsigned int code, int value)
{
	struct hidp_session *session = FUNC1(dev);

	return FUNC0(session, dev, type, code, value);
}