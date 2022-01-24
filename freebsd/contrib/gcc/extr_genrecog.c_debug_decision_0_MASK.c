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
struct TYPE_2__ {struct decision* first; } ;
struct decision {struct decision* next; TYPE_1__ success; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct decision*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void
FUNC3 (struct decision *d, int indent, int maxdepth)
{
  struct decision *n;
  int i;

  if (maxdepth < 0)
    return;
  if (d == NULL)
    {
      for (i = 0; i < indent; ++i)
	FUNC2 (' ', stderr);
      FUNC1 ("(nil)\n", stderr);
      return;
    }

  FUNC0 (d, indent);
  for (n = d->success.first; n ; n = n->next)
    FUNC3 (n, indent + 2, maxdepth - 1);
}