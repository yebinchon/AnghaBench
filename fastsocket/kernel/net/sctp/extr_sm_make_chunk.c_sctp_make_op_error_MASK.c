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
struct sctp_chunk {int dummy; } ;
struct sctp_association {int dummy; } ;
typedef  int /*<<< orphan*/  __be16 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sctp_chunk*,size_t,void const*) ; 
 int /*<<< orphan*/  FUNC1 (struct sctp_chunk*,size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct sctp_chunk*,int /*<<< orphan*/ ,size_t) ; 
 struct sctp_chunk* FUNC3 (struct sctp_association const*,struct sctp_chunk const*,size_t) ; 

struct sctp_chunk *FUNC4(const struct sctp_association *asoc,
				 const struct sctp_chunk *chunk,
				 __be16 cause_code, const void *payload,
				 size_t paylen, size_t reserve_tail)
{
	struct sctp_chunk *retval;

	retval = FUNC3(asoc, chunk, paylen + reserve_tail);
	if (!retval)
		goto nodata;

	FUNC2(retval, cause_code, paylen + reserve_tail);
	FUNC0(retval, paylen, payload);
	if (reserve_tail)
		FUNC1(retval, reserve_tail, NULL);

nodata:
	return retval;
}