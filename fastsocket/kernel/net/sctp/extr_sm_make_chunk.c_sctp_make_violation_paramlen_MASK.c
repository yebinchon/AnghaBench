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
struct sctp_paramhdr {int dummy; } ;
struct sctp_chunk {int dummy; } ;
struct sctp_association {int dummy; } ;
typedef  int /*<<< orphan*/  sctp_paramhdr_t ;
typedef  int /*<<< orphan*/  sctp_errhdr_t ;
typedef  int /*<<< orphan*/  error ;

/* Variables and functions */
 int /*<<< orphan*/  SCTP_ERROR_PROTO_VIOLATION ; 
 int /*<<< orphan*/  FUNC0 (struct sctp_chunk*,int,char const*) ; 
 int /*<<< orphan*/  FUNC1 (struct sctp_chunk*,int,struct sctp_paramhdr*) ; 
 int /*<<< orphan*/  FUNC2 (struct sctp_chunk*,int /*<<< orphan*/ ,int) ; 
 struct sctp_chunk* FUNC3 (struct sctp_association const*,struct sctp_chunk const*,size_t) ; 

struct sctp_chunk *FUNC4(
	const struct sctp_association *asoc,
	const struct sctp_chunk *chunk,
	struct sctp_paramhdr *param)
{
	struct sctp_chunk *retval;
	static const char error[] = "The following parameter had invalid length:";
	size_t payload_len = sizeof(error) + sizeof(sctp_errhdr_t) +
				sizeof(sctp_paramhdr_t);

	retval = FUNC3(asoc, chunk, payload_len);
	if (!retval)
		goto nodata;

	FUNC2(retval, SCTP_ERROR_PROTO_VIOLATION,
			sizeof(error) + sizeof(sctp_paramhdr_t));
	FUNC0(retval, sizeof(error), error);
	FUNC1(retval, sizeof(sctp_paramhdr_t), param);

nodata:
	return retval;
}