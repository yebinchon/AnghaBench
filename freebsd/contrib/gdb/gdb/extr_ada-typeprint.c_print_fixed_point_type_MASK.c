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
struct ui_file {int dummy; } ;
struct type {int dummy; } ;
typedef  double DOUBLEST ;

/* Variables and functions */
 double FUNC0 (struct type*) ; 
 double FUNC1 (struct type*,double) ; 
 int /*<<< orphan*/  FUNC2 (struct ui_file*,char*,...) ; 

__attribute__((used)) static void
FUNC3 (struct type *type, struct ui_file *stream)
{
  DOUBLEST delta = FUNC0 (type);
  DOUBLEST small = FUNC1 (type, 1.0);

  if (delta < 0.0)
    FUNC2 (stream, "delta ??");
  else
    {
      FUNC2 (stream, "delta %g", (double) delta);
      if (delta != small)
	FUNC2 (stream, " <'small = %g>", (double) small);
    }
}