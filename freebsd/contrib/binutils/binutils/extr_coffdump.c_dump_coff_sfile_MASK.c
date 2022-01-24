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
struct coff_sfile {char* name; struct coff_sfile* next; int /*<<< orphan*/  scope; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static void
FUNC4 (struct coff_sfile *p)
{
  FUNC3 (1);
  FUNC2 ("List of source files");
  FUNC1 ();

  while (p)
    {
      FUNC3 (0);
      FUNC2 ("Source file %s", p->name);
      FUNC1 ();
      FUNC0 (p->scope);
      p = p->next;
    }
  FUNC3 (-1);
}