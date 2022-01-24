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
struct TYPE_2__ {int /*<<< orphan*/  mnemonic; } ;
typedef  int /*<<< orphan*/  PTR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*) ; 
 char* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  op_hash ; 
 int spu_num_opcodes ; 
 TYPE_1__* spu_opcodes ; 
 scalar_t__ FUNC4 (char const*,char*) ; 

void
FUNC5 (void)
{
  const char *retval = NULL;
  int i;

  /* initialize hash table */

  op_hash = FUNC3 ();

  /* loop until you see the end of the list */

  for (i = 0; i < spu_num_opcodes; i++)
    {
      /* hash each mnemonic and record its position */

      retval = FUNC2 (op_hash, spu_opcodes[i].mnemonic, (PTR)&spu_opcodes[i]);

      if (retval != NULL && FUNC4 (retval, "exists") != 0)
	FUNC1 (FUNC0("Can't hash instruction '%s':%s"),
		  spu_opcodes[i].mnemonic, retval);
    }
}