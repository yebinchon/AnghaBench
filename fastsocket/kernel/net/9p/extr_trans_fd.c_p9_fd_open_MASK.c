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
struct p9_trans_fd {void* wr; void* rd; } ;
struct p9_client {int /*<<< orphan*/  status; struct p9_trans_fd* trans; } ;

/* Variables and functions */
 int /*<<< orphan*/  Connected ; 
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 void* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (struct p9_trans_fd*) ; 
 struct p9_trans_fd* FUNC3 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct p9_client *client, int rfd, int wfd)
{
	struct p9_trans_fd *ts = FUNC3(sizeof(struct p9_trans_fd),
					   GFP_KERNEL);
	if (!ts)
		return -ENOMEM;

	ts->rd = FUNC0(rfd);
	ts->wr = FUNC0(wfd);
	if (!ts->rd || !ts->wr) {
		if (ts->rd)
			FUNC1(ts->rd);
		if (ts->wr)
			FUNC1(ts->wr);
		FUNC2(ts);
		return -EIO;
	}

	client->trans = ts;
	client->status = Connected;

	return 0;
}