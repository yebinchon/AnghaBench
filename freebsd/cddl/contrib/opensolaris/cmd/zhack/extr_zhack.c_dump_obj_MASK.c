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
struct TYPE_3__ {int za_integer_length; int za_num_integers; char* za_name; scalar_t__ za_first_integer; } ;
typedef  TYPE_1__ zap_attribute_t ;
typedef  int /*<<< orphan*/  val ;
typedef  int /*<<< orphan*/  uint64_t ;
typedef  char* u_longlong_t ;
typedef  int /*<<< orphan*/  objset_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int,int,char*) ; 

__attribute__((used)) static void
FUNC8(objset_t *os, uint64_t obj, const char *name)
{
	zap_cursor_t zc;
	zap_attribute_t za;

	(void) FUNC2("%s_obj:\n", name);

	for (FUNC5(&zc, os, obj);
	    FUNC6(&zc, &za) == 0;
	    FUNC3(&zc)) {
		if (za.za_integer_length == 8) {
			FUNC0(za.za_num_integers == 1);
			(void) FUNC2("\t%s = %llu\n",
			    za.za_name, (u_longlong_t)za.za_first_integer);
		} else {
			FUNC0(za.za_integer_length == 1);
			char val[1024];
			FUNC1(FUNC7(os, obj, za.za_name,
			    1, sizeof (val), val) == 0);
			(void) FUNC2("\t%s = %s\n", za.za_name, val);
		}
	}
	FUNC4(&zc);
}