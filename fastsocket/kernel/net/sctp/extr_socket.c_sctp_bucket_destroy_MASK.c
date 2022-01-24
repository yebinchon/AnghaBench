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
struct sctp_bind_bucket {int /*<<< orphan*/  node; int /*<<< orphan*/  owner; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  bind_bucket ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct sctp_bind_bucket*) ; 
 int /*<<< orphan*/  sctp_bucket_cachep ; 

__attribute__((used)) static void FUNC4(struct sctp_bind_bucket *pp)
{
	if (pp && FUNC2(&pp->owner)) {
		FUNC1(&pp->node);
		FUNC3(sctp_bucket_cachep, pp);
		FUNC0(bind_bucket);
	}
}