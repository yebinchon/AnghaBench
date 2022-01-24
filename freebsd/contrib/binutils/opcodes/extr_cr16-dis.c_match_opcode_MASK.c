#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  match_bits; int /*<<< orphan*/  match; } ;

/* Variables and functions */
 unsigned long FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int NUMOPCODES ; 
 unsigned long FUNC1 () ; 
 TYPE_1__* cr16_instruction ; 
 TYPE_1__* instruction ; 
 int* words ; 

__attribute__((used)) static int
FUNC2 (void)
{
  unsigned long mask;
  /* The instruction 'constant' opcode doewsn't exceed 32 bits.  */
  unsigned long doubleWord = words[1] + (words[0] << 16);

  /* Start searching from end of instruction table.  */
  instruction = &cr16_instruction[NUMOPCODES - 2];

  /* Loop over instruction table until a full match is found.  */
  while (instruction >= cr16_instruction)
    {
      mask = FUNC1 ();
      if ((doubleWord & mask) == FUNC0 (instruction->match,
                                      instruction->match_bits))
        return 1;
      else
        instruction--;
    }
  return 0;
}