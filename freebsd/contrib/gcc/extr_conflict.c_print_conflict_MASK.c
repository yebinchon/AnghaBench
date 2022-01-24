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
struct print_context {int started; int reg; int /*<<< orphan*/  fp; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

__attribute__((used)) static int
FUNC2 (int reg1, int reg2, void *contextp)
{
  struct print_context *context = (struct print_context *) contextp;
  int reg;

  /* If this is the first conflict printed for this reg, start a new
     line.  */
  if (! context->started)
    {
      FUNC0 (context->fp, " %d:", context->reg);
      context->started = 1;
    }

  /* Figure out the reg whose conflicts we're printing.  The other reg
     is the interesting one.  */
  if (reg1 == context->reg)
    reg = reg2;
  else
    {
      FUNC1 (reg2 == context->reg);
      reg = reg1;
    }

  /* Print the conflict.  */
  FUNC0 (context->fp, " %d", reg);

  /* Continue enumerating.  */
  return 0;
}