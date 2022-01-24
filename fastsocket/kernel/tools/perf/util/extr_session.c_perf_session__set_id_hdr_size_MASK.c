#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u16 ;
struct TYPE_2__ {int /*<<< orphan*/  id_hdr_size; } ;
struct perf_session {int /*<<< orphan*/  machines; TYPE_1__ host_machine; int /*<<< orphan*/  evlist; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

void FUNC2(struct perf_session *session)
{
	u16 id_hdr_size = FUNC1(session->evlist);

	session->host_machine.id_hdr_size = id_hdr_size;
	FUNC0(&session->machines, id_hdr_size);
}