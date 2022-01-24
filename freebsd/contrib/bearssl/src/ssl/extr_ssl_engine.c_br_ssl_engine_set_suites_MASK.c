#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint16_t ;
struct TYPE_4__ {size_t suites_num; int /*<<< orphan*/  suites_buf; } ;
typedef  TYPE_1__ br_ssl_engine_context ;

/* Variables and functions */
 int /*<<< orphan*/  BR_ERR_BAD_PARAM ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,size_t) ; 

void
FUNC2(br_ssl_engine_context *cc,
	const uint16_t *suites, size_t suites_num)
{
	if ((suites_num * sizeof *suites) > sizeof cc->suites_buf) {
		FUNC0(cc, BR_ERR_BAD_PARAM);
		return;
	}
	FUNC1(cc->suites_buf, suites, suites_num * sizeof *suites);
	cc->suites_num = suites_num;
}