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
struct link {scalar_t__ vecelt; int pos; struct link* next; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 

__attribute__((used)) static void
FUNC1 (struct link *path)
{
  if (path == 0)
    FUNC0 ("pat");
  else if (path->vecelt >= 0)
    {
      FUNC0 ("XVECEXP (");
      FUNC1 (path->next);
      FUNC0 (", %d, %d)", path->pos, path->vecelt);
    }
  else
    {
      FUNC0 ("XEXP (");
      FUNC1 (path->next);
      FUNC0 (", %d)", path->pos);
    }
}