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
struct TYPE_2__ {char* mnemonic; } ;

/* Variables and functions */
 int /*<<< orphan*/  NUMPREGPS ; 
 int /*<<< orphan*/  NUMPREGS ; 
 int /*<<< orphan*/  NUMREGPS ; 
 int /*<<< orphan*/  NUMREGS ; 
 char const* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char const*,...) ; 
 int /*<<< orphan*/ * cr16_inst_hash ; 
 TYPE_1__* cr16_instruction ; 
 int /*<<< orphan*/  cr16_pregptab ; 
 int /*<<< orphan*/  cr16_pregtab ; 
 int /*<<< orphan*/  cr16_regptab ; 
 int /*<<< orphan*/  cr16_regtab ; 
 char* FUNC2 (int /*<<< orphan*/ *,char const*,char*) ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int linkrelax ; 
 int /*<<< orphan*/  preg_hash ; 
 int /*<<< orphan*/  pregp_hash ; 
 int /*<<< orphan*/  reg_hash ; 
 int /*<<< orphan*/  regp_hash ; 
 scalar_t__ FUNC5 (char*,char const*) ; 

void
FUNC6 (void)
{
  int i = 0;

  /* Set up a hash table for the instructions.  */
  if ((cr16_inst_hash = FUNC3 ()) == NULL)
    FUNC1 (FUNC0("Virtual memory exhausted"));

  while (cr16_instruction[i].mnemonic != NULL)
    {
      const char *hashret;
      const char *mnemonic = cr16_instruction[i].mnemonic;

      hashret = FUNC2 (cr16_inst_hash, mnemonic,
			     (char *)(cr16_instruction + i));

      if (hashret != NULL && *hashret != '\0')
        FUNC1 (FUNC0("Can't hash `%s': %s\n"), cr16_instruction[i].mnemonic,
                  *hashret == 0 ? FUNC0("(unknown reason)") : hashret);

      /* Insert unique names into hash table.  The CR16 instruction set
         has many identical opcode names that have different opcodes based
         on the operands.  This hash table then provides a quick index to
         the first opcode with a particular name in the opcode table.  */
      do
        {
          ++i;
        }
      while (cr16_instruction[i].mnemonic != NULL
             && FUNC5 (cr16_instruction[i].mnemonic, mnemonic));
    }

  /* Initialize reg_hash hash table.  */
  FUNC4 (& reg_hash, cr16_regtab, NUMREGS);
  /* Initialize regp_hash hash table.  */
  FUNC4 (& regp_hash, cr16_regptab, NUMREGPS);
  /* Initialize preg_hash hash table.  */
  FUNC4 (& preg_hash, cr16_pregtab, NUMPREGS);
  /* Initialize pregp_hash hash table.  */
  FUNC4 (& pregp_hash, cr16_pregptab, NUMPREGPS);

  /*  Set linkrelax here to avoid fixups in most sections.  */
  linkrelax = 1;
}