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
typedef  int /*<<< orphan*/  va_list ;
typedef  int /*<<< orphan*/  location_t ;
typedef  int /*<<< orphan*/  diagnostic_t ;
typedef  int /*<<< orphan*/  diagnostic_info ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC2 (diagnostic_info *diagnostic, const char *gmsgid,
		     va_list *args, location_t location,
		     diagnostic_t kind)
{
  FUNC1 (diagnostic, FUNC0(gmsgid), args, location, kind);
}