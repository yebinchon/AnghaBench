#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {scalar_t__ reneg; } ;
struct TYPE_7__ {TYPE_3__ eng; } ;
typedef  TYPE_1__ br_ssl_server_context ;

/* Variables and functions */
 scalar_t__ BR_ERR_OK ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 scalar_t__ FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  br_ssl_hs_server_init_main ; 
 int /*<<< orphan*/  br_ssl_hs_server_run ; 

int
FUNC4(br_ssl_server_context *cc)
{
	FUNC3(&cc->eng, NULL, 0, 0);
	if (!FUNC1(&cc->eng)) {
		return 0;
	}
	cc->eng.reneg = 0;
	FUNC0(&cc->eng,
		br_ssl_hs_server_init_main, br_ssl_hs_server_run);
	return FUNC2(&cc->eng) == BR_ERR_OK;
}