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
struct ocfs2_control_message_down {char space1; char space2; char newline; int /*<<< orphan*/  uuid; int /*<<< orphan*/  nodestr; int /*<<< orphan*/  tag; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ERANGE ; 
 long INT_MAX ; 
 long LONG_MAX ; 
 long LONG_MIN ; 
 scalar_t__ OCFS2_CONTROL_HANDSHAKE_VALID ; 
 int /*<<< orphan*/  OCFS2_CONTROL_MESSAGE_DOWN_OP ; 
 int /*<<< orphan*/  OCFS2_CONTROL_MESSAGE_OP_LEN ; 
 scalar_t__ FUNC0 (struct file*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,long) ; 
 long FUNC2 (int /*<<< orphan*/ ,char**,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct file *file,
				     struct ocfs2_control_message_down *msg)
{
	long nodenum;
	char *p = NULL;

	if (FUNC0(file) !=
	    OCFS2_CONTROL_HANDSHAKE_VALID)
		return -EINVAL;

	if (FUNC3(msg->tag, OCFS2_CONTROL_MESSAGE_DOWN_OP,
		    OCFS2_CONTROL_MESSAGE_OP_LEN))
		return -EINVAL;

	if ((msg->space1 != ' ') || (msg->space2 != ' ') ||
	    (msg->newline != '\n'))
		return -EINVAL;
	msg->space1 = msg->space2 = msg->newline = '\0';

	nodenum = FUNC2(msg->nodestr, &p, 16);
	if (!p || *p)
		return -EINVAL;

	if ((nodenum == LONG_MIN) || (nodenum == LONG_MAX) ||
	    (nodenum > INT_MAX) || (nodenum < 0))
		return -ERANGE;

	FUNC1(msg->uuid, nodenum);

	return 0;
}