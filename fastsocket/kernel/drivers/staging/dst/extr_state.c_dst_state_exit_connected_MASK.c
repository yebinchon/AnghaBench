#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct sockaddr {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  addr; } ;
struct dst_state {TYPE_2__ ctl; TYPE_3__* socket; } ;
struct TYPE_7__ {TYPE_1__* ops; } ;
struct TYPE_5__ {int /*<<< orphan*/  (* shutdown ) (TYPE_3__*,int) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,struct sockaddr*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct dst_state*) ; 
 int /*<<< orphan*/  FUNC2 (struct dst_state*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int) ; 

void FUNC4(struct dst_state *st)
{
	if (st->socket) {
		FUNC1(st);
		st->socket->ops->shutdown(st->socket, 2);

		FUNC0(st->socket, (struct sockaddr *)&st->ctl.addr,
				"Disconnected peer");
		FUNC2(st);
	}
}