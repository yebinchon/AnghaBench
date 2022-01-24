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
struct __sctp_missing {int /*<<< orphan*/  type; int /*<<< orphan*/  num_missing; } ;
typedef  int /*<<< orphan*/  sctp_param_t ;
typedef  int /*<<< orphan*/  report ;
typedef  int /*<<< orphan*/  __u16 ;

/* Variables and functions */
 int /*<<< orphan*/  SCTP_ERROR_MISS_PARAM ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct sctp_chunk*,int,struct __sctp_missing*) ; 
 int /*<<< orphan*/  FUNC3 (struct sctp_chunk*,int /*<<< orphan*/ ,int) ; 
 struct sctp_chunk* FUNC4 (struct sctp_association const*,struct sctp_chunk*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(const struct sctp_association *asoc,
				      sctp_param_t paramtype,
				      struct sctp_chunk *chunk,
				      struct sctp_chunk **errp)
{
	struct __sctp_missing report;
	__u16 len;

	len = FUNC0(sizeof(report));

	/* Make an ERROR chunk, preparing enough room for
	 * returning multiple unknown parameters.
	 */
	if (!*errp)
		*errp = FUNC4(asoc, chunk, len);

	if (*errp) {
		report.num_missing = FUNC1(1);
		report.type = paramtype;
		FUNC3(*errp, SCTP_ERROR_MISS_PARAM,
				sizeof(report));
		FUNC2(*errp, sizeof(report), &report);
	}

	/* Stop processing this chunk. */
	return 0;
}