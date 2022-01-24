#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ record_type_out; int application_data; } ;
typedef  TYPE_1__ br_ssl_engine_context ;

/* Variables and functions */
 scalar_t__ BR_SSL_APPLICATION_DATA ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,size_t) ; 

void
FUNC3(br_ssl_engine_context *cc, size_t len)
{
	FUNC2(cc, len);
	if (len != 0 && !FUNC0(cc)
		&& (cc->record_type_out != BR_SSL_APPLICATION_DATA
		|| (cc->application_data & 1) == 0))
	{
		FUNC1(cc, 0);
	}
}