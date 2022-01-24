#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  symbolS ;
typedef  int /*<<< orphan*/  alent ;
struct TYPE_2__ {int /*<<< orphan*/ * lineno; } ;

/* Variables and functions */
 int /*<<< orphan*/  coff_n_line_nos ; 
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * current_lineno_sym ; 
 scalar_t__ line_nos ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

void
FUNC2 (symbolS *sym)
{
  if (line_nos)
    {
      FUNC0 (FUNC1 (current_lineno_sym))->lineno =
	(alent *) line_nos;
      coff_n_line_nos++;
      line_nos = 0;
    }
  current_lineno_sym = sym;
}