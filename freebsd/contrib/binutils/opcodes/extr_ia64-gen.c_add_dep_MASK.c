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
struct rdep {int semantics; char* extra; int waw_special; int /*<<< orphan*/  regnotes; int /*<<< orphan*/  nregs; int /*<<< orphan*/  regs; int /*<<< orphan*/  chknotes; int /*<<< orphan*/  nchks; int /*<<< orphan*/  chks; } ;

/* Variables and functions */
 struct rdep* FUNC0 (char const*,int) ; 
 int /*<<< orphan*/  FUNC1 (char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC2 (const char *name, const char *chk, const char *reg,
         int semantics, int mode, char *extra, int flag)
{
  struct rdep *rs;

  rs = FUNC0 (name, mode);

  FUNC1 (chk, &rs->chks, &rs->nchks, &rs->chknotes);
  FUNC1 (reg, &rs->regs, &rs->nregs, &rs->regnotes);

  rs->semantics = semantics;
  rs->extra = extra;
  rs->waw_special = flag;
}