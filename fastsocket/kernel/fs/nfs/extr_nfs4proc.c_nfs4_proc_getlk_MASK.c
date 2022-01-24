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
struct nfs4_state {int /*<<< orphan*/  inode; } ;
struct nfs4_exception {scalar_t__ retry; } ;
struct file_lock {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct nfs4_state*,int,struct file_lock*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct nfs4_exception*) ; 

__attribute__((used)) static int FUNC3(struct nfs4_state *state, int cmd, struct file_lock *request)
{
	struct nfs4_exception exception = { };
	int err;

	do {
		err = FUNC2(FUNC0(state->inode),
				FUNC1(state, cmd, request),
				&exception);
	} while (exception.retry);
	return err;
}