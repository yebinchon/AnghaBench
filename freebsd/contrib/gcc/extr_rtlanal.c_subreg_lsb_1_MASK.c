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
typedef  enum machine_mode { ____Placeholder_machine_mode } machine_mode ;

/* Variables and functions */
 unsigned int BITS_PER_UNIT ; 
 unsigned int BITS_PER_WORD ; 
 scalar_t__ BYTES_BIG_ENDIAN ; 
 scalar_t__ FUNC0 (int) ; 
 unsigned int FUNC1 (int) ; 
 unsigned int UNITS_PER_WORD ; 
 scalar_t__ WORDS_BIG_ENDIAN ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

unsigned int
FUNC3 (enum machine_mode outer_mode,
	      enum machine_mode inner_mode,
	      unsigned int subreg_byte)
{
  unsigned int bitpos;
  unsigned int byte;
  unsigned int word;

  /* A paradoxical subreg begins at bit position 0.  */
  if (FUNC0 (outer_mode) > FUNC0 (inner_mode))
    return 0;

  if (WORDS_BIG_ENDIAN != BYTES_BIG_ENDIAN)
    /* If the subreg crosses a word boundary ensure that
       it also begins and ends on a word boundary.  */
    FUNC2 (!((subreg_byte % UNITS_PER_WORD
		  + FUNC1 (outer_mode)) > UNITS_PER_WORD
		  && (subreg_byte % UNITS_PER_WORD
		      || FUNC1 (outer_mode) % UNITS_PER_WORD)));

  if (WORDS_BIG_ENDIAN)
    word = (FUNC1 (inner_mode)
	    - (subreg_byte + FUNC1 (outer_mode))) / UNITS_PER_WORD;
  else
    word = subreg_byte / UNITS_PER_WORD;
  bitpos = word * BITS_PER_WORD;

  if (BYTES_BIG_ENDIAN)
    byte = (FUNC1 (inner_mode)
	    - (subreg_byte + FUNC1 (outer_mode))) % UNITS_PER_WORD;
  else
    byte = subreg_byte % UNITS_PER_WORD;
  bitpos += byte * BITS_PER_UNIT;

  return bitpos;
}