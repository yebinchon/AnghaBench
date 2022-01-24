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
struct sctp_association {int assoc_id; } ;
typedef  int sctp_assoc_t ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int EAGAIN ; 
 int ENOMEM ; 
 int INT_MAX ; 
 int FUNC0 (int /*<<< orphan*/ *,void*,int,int*) ; 
 int idr_low ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sctp_assocs_id ; 
 int /*<<< orphan*/  sctp_assocs_id_lock ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int) ; 

int FUNC5(struct sctp_association *asoc, gfp_t gfp)
{
	int assoc_id;
	int error = 0;

	/* If the id is already assigned, keep it. */
	if (asoc->assoc_id)
		return error;
retry:
	if (FUNC4(!FUNC1(&sctp_assocs_id, gfp)))
		return -ENOMEM;

	FUNC2(&sctp_assocs_id_lock);
	error = FUNC0(&sctp_assocs_id, (void *)asoc,
				    idr_low, &assoc_id);
	if (!error) {
		idr_low = assoc_id + 1;
		if (idr_low == INT_MAX)
			idr_low = 1;
	}
	FUNC3(&sctp_assocs_id_lock);
	if (error == -EAGAIN)
		goto retry;
	else if (error)
		return error;

	asoc->assoc_id = (sctp_assoc_t) assoc_id;
	return error;
}