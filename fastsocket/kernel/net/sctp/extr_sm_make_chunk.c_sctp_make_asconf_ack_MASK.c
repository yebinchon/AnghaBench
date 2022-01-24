#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  addip_hdr; } ;
struct sctp_chunk {TYPE_1__ subh; } ;
struct sctp_association {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  serial; } ;
typedef  TYPE_2__ sctp_addiphdr_t ;
typedef  int /*<<< orphan*/  asconf ;
typedef  int /*<<< orphan*/  __u32 ;

/* Variables and functions */
 int /*<<< orphan*/  SCTP_CID_ASCONF_ACK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sctp_chunk*,int,TYPE_2__*) ; 
 struct sctp_chunk* FUNC2 (struct sctp_association const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static struct sctp_chunk *FUNC3(const struct sctp_association *asoc,
					       __u32 serial, int vparam_len)
{
	sctp_addiphdr_t		asconf;
	struct sctp_chunk	*retval;
	int			length = sizeof(asconf) + vparam_len;

	/* Create the chunk.  */
	retval = FUNC2(asoc, SCTP_CID_ASCONF_ACK, 0, length);
	if (!retval)
		return NULL;

	asconf.serial = FUNC0(serial);

	retval->subh.addip_hdr =
		FUNC1(retval, sizeof(asconf), &asconf);

	return retval;
}