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
struct stat_session {int dummy; } ;
struct inode {struct stat_session* i_private; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct stat_session*) ; 
 int FUNC1 (struct inode*,struct file*) ; 

__attribute__((used)) static int FUNC2(struct inode *i, struct file *f)
{
	struct stat_session *session = i->i_private;

	FUNC0(session);

	return FUNC1(i, f);
}