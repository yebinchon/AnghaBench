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
struct sctp_datamsg {int dummy; } ;
struct sctp_chunk {struct sctp_datamsg* msg; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sctp_datamsg*) ; 

__attribute__((used)) static void FUNC1(struct sctp_datamsg *msg, struct sctp_chunk *chunk)
{
	FUNC0(msg);
	chunk->msg = msg;
}