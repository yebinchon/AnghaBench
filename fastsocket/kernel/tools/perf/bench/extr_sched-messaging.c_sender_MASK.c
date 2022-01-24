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
struct sender_context {unsigned int num_fds; int /*<<< orphan*/ * out_fds; int /*<<< orphan*/  wakefd; int /*<<< orphan*/  ready_out; } ;
typedef  int /*<<< orphan*/  data ;

/* Variables and functions */
 int DATASIZE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 unsigned int loops ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static void *FUNC3(struct sender_context *ctx)
{
	char data[DATASIZE];
	unsigned int i, j;

	FUNC1(ctx->ready_out, ctx->wakefd);

	/* Now pump to every receiver. */
	for (i = 0; i < loops; i++) {
		for (j = 0; j < ctx->num_fds; j++) {
			int ret, done = 0;

again:
			ret = FUNC2(ctx->out_fds[j], data + done,
				    sizeof(data)-done);
			if (ret < 0)
				FUNC0("SENDER: write");
			done += ret;
			if (done < DATASIZE)
				goto again;
		}
	}

	return NULL;
}