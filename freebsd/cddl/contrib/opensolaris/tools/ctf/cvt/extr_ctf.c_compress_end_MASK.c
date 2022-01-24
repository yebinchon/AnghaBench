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
struct TYPE_4__ {int /*<<< orphan*/  rb_zstr; } ;
typedef  TYPE_1__ resbuf_t ;

/* Variables and functions */
 int /*<<< orphan*/  Z_FINISH ; 
 int Z_OK ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static void
FUNC4(resbuf_t *rb)
{
	int rc;

	FUNC0(rb, Z_FINISH);

	if ((rc = FUNC1(&rb->rb_zstr)) != Z_OK)
		FUNC2("zlib end failed: %s", FUNC3(rc));
}