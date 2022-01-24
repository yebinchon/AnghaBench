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
struct TYPE_4__ {int /*<<< orphan*/  pragmas; } ;
typedef  TYPE_1__ cpp_reader ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char**) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,char**) ; 

void
FUNC2 (cpp_reader *pfile, char **saved)
{
  (void) FUNC1 (pfile, pfile->pragmas, saved);
  FUNC0 (saved);
}