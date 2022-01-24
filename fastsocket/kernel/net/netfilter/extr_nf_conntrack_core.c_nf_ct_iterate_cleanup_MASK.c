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
struct nf_conn {int /*<<< orphan*/  timeout; } ;
struct net {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 struct nf_conn* FUNC2 (struct net*,int (*) (struct nf_conn*,void*),void*,unsigned int*) ; 
 int /*<<< orphan*/  FUNC3 (struct nf_conn*) ; 

void FUNC4(struct net *net,
			   int (*iter)(struct nf_conn *i, void *data),
			   void *data)
{
	struct nf_conn *ct;
	unsigned int bucket = 0;

	while ((ct = FUNC2(net, iter, data, &bucket)) != NULL) {
		/* Time to push up daises... */
		if (FUNC1(&ct->timeout))
			FUNC0((unsigned long)ct);
		/* ... else the timer will get him soon. */

		FUNC3(ct);
	}
}