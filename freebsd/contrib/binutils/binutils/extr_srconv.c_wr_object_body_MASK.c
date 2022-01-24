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
struct coff_ofile {int nsections; scalar_t__ sections; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct coff_ofile*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct coff_ofile*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct coff_ofile*,scalar_t__) ; 

__attribute__((used)) static void
FUNC3 (struct coff_ofile *p)
{
  int i;

  for (i = 1; i < p->nsections; i++)
    {
      FUNC2 (p, p->sections + i);
      FUNC0 (p, p->sections + i);
      FUNC1 (p, p->sections + i);
    }
}