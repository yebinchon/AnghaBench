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
struct TYPE_4__ {int /*<<< orphan*/  err_hdr; } ;
struct sctp_chunk {TYPE_1__ subh; } ;
struct TYPE_5__ {int /*<<< orphan*/  length; int /*<<< orphan*/  cause; } ;
typedef  TYPE_2__ sctp_errhdr_t ;
typedef  int __u16 ;
typedef  int /*<<< orphan*/  __be16 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct sctp_chunk*,int,TYPE_2__*) ; 

void  FUNC2(struct sctp_chunk *chunk, __be16 cause_code,
		      size_t paylen)
{
	sctp_errhdr_t err;
	__u16 len;

	/* Cause code constants are now defined in network order.  */
	err.cause = cause_code;
	len = sizeof(sctp_errhdr_t) + paylen;
	err.length  = FUNC0(len);
	chunk->subh.err_hdr = FUNC1(chunk, sizeof(sctp_errhdr_t), &err);
}