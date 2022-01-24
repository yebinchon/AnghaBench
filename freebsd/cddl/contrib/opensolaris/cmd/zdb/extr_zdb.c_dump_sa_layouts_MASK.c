#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zap_cursor_t ;
struct TYPE_3__ {char* za_name; int za_num_integers; int za_integer_length; } ;
typedef  TYPE_1__ zap_attribute_t ;
typedef  int /*<<< orphan*/  uint64_t ;
typedef  scalar_t__ uint16_t ;
typedef  int /*<<< orphan*/  objset_t ;

/* Variables and functions */
 int /*<<< orphan*/  UMEM_NOFAIL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__*,int) ; 
 scalar_t__* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int,int,scalar_t__*) ; 

__attribute__((used)) static void
FUNC10(objset_t *os, uint64_t object, void *data, size_t size)
{
	zap_cursor_t zc;
	zap_attribute_t attr;
	uint16_t *layout_attrs;
	unsigned i;

	FUNC1(os, object);
	(void) FUNC2("\n");

	for (FUNC7(&zc, os, object);
	    FUNC8(&zc, &attr) == 0;
	    FUNC5(&zc)) {
		(void) FUNC2("\t\t%s = [", attr.za_name);
		if (attr.za_num_integers == 0) {
			(void) FUNC2("\n");
			continue;
		}

		FUNC0(attr.za_integer_length == 2);
		layout_attrs = FUNC4(attr.za_num_integers *
		    attr.za_integer_length, UMEM_NOFAIL);

		FUNC0(FUNC9(os, object, attr.za_name,
		    attr.za_integer_length,
		    attr.za_num_integers, layout_attrs) == 0);

		for (i = 0; i != attr.za_num_integers; i++)
			(void) FUNC2(" %d ", (int)layout_attrs[i]);
		(void) FUNC2("]\n");
		FUNC3(layout_attrs,
		    attr.za_num_integers * attr.za_integer_length);
	}
	FUNC6(&zc);
}