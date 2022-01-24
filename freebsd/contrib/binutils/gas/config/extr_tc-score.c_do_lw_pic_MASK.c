#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ X_add_symbol; } ;
struct TYPE_4__ {int /*<<< orphan*/  type; TYPE_2__ exp; } ;
struct TYPE_6__ {int instruction; TYPE_1__ reloc; scalar_t__ error; } ;

/* Variables and functions */
 scalar_t__ BAD_ARGS ; 
 int /*<<< orphan*/  BFD_RELOC_SCORE_GOT15 ; 
 scalar_t__ FAIL ; 
 int GP ; 
 int /*<<< orphan*/  REG_TYPE_SCORE ; 
 int FUNC0 (char*) ; 
 TYPE_3__ inst ; 
 int FUNC1 (TYPE_2__*,char**) ; 
 int FUNC2 (char**,int,int /*<<< orphan*/ ) ; 
 int FUNC3 (char**) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

__attribute__((used)) static void
FUNC5 (char *str)
{
  int reg_rd;

  FUNC4 (str);
  if (((reg_rd = FUNC2 (&str, 20, REG_TYPE_SCORE)) == (int) FAIL)
      || (FUNC3 (&str) == (int) FAIL)
      || (FUNC1 (&inst.reloc.exp, &str) == (int) FAIL)
      || (FUNC0 (str) == (int) FAIL))
    {
      return;
    }
  else
    {
      if (inst.reloc.exp.X_add_symbol == 0)
        {
          if (!inst.error)
	    inst.error = BAD_ARGS;

          return;
        }

      inst.instruction |= GP << 15;
      inst.reloc.type = BFD_RELOC_SCORE_GOT15;
    }
}