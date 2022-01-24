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
struct iv_cand {int id; int pos; scalar_t__ depends_on; scalar_t__ important; struct iv* iv; } ;
struct iv {int dummy; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
#define  IP_END 130 
#define  IP_NORMAL 129 
#define  IP_ORIGINAL 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct iv*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,...) ; 

void
FUNC3 (FILE *file, struct iv_cand *cand)
{
  struct iv *iv = cand->iv;

  FUNC2 (file, "candidate %d%s\n",
	   cand->id, cand->important ? " (important)" : "");

  if (cand->depends_on)
    {
      FUNC2 (file, "  depends on ");
      FUNC0 (file, cand->depends_on);
    }

  if (!iv)
    {
      FUNC2 (file, "  final value replacement\n");
      return;
    }

  switch (cand->pos)
    {
    case IP_NORMAL:
      FUNC2 (file, "  incremented before exit test\n");
      break;

    case IP_END:
      FUNC2 (file, "  incremented at end\n");
      break;

    case IP_ORIGINAL:
      FUNC2 (file, "  original biv\n");
      break;
    }

  FUNC1 (file, iv);
}