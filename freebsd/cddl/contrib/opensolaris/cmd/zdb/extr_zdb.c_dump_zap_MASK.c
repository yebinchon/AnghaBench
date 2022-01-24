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
typedef  int uint32_t ;
typedef  int uint16_t ;
typedef  int /*<<< orphan*/  u_longlong_t ;
typedef  int /*<<< orphan*/  objset_t ;
typedef  int /*<<< orphan*/  int64_t ;

/* Variables and functions */
 int /*<<< orphan*/  UMEM_NOFAIL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (void*,int) ; 
 void* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int,int,void*) ; 

__attribute__((used)) static void
FUNC9(objset_t *os, uint64_t object, void *data, size_t size)
{
	zap_cursor_t zc;
	zap_attribute_t attr;
	void *prop;
	unsigned i;

	FUNC0(os, object);
	(void) FUNC1("\n");

	for (FUNC6(&zc, os, object);
	    FUNC7(&zc, &attr) == 0;
	    FUNC4(&zc)) {
		(void) FUNC1("\t\t%s = ", attr.za_name);
		if (attr.za_num_integers == 0) {
			(void) FUNC1("\n");
			continue;
		}
		prop = FUNC3(attr.za_num_integers *
		    attr.za_integer_length, UMEM_NOFAIL);
		(void) FUNC8(os, object, attr.za_name,
		    attr.za_integer_length, attr.za_num_integers, prop);
		if (attr.za_integer_length == 1) {
			(void) FUNC1("%s", (char *)prop);
		} else {
			for (i = 0; i < attr.za_num_integers; i++) {
				switch (attr.za_integer_length) {
				case 2:
					(void) FUNC1("%u ",
					    ((uint16_t *)prop)[i]);
					break;
				case 4:
					(void) FUNC1("%u ",
					    ((uint32_t *)prop)[i]);
					break;
				case 8:
					(void) FUNC1("%lld ",
					    (u_longlong_t)((int64_t *)prop)[i]);
					break;
				}
			}
		}
		(void) FUNC1("\n");
		FUNC2(prop, attr.za_num_integers * attr.za_integer_length);
	}
	FUNC5(&zc);
}