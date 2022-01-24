#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  enum machine_mode { ____Placeholder_machine_mode } machine_mode ;
typedef  int /*<<< orphan*/  decimal128 ;
struct TYPE_5__ {scalar_t__ sig; } ;
typedef  TYPE_1__ REAL_VALUE_TYPE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*,int) ; 

__attribute__((used)) static void
FUNC2 (REAL_VALUE_TYPE *to, const REAL_VALUE_TYPE *from,
		   enum machine_mode mode)
{
  char string[256];
  decimal128 *d128;
  d128 = (decimal128 *) from->sig;

  FUNC0 (d128, string);
  FUNC1 (to, string, mode);
}