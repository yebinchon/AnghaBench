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
typedef  int /*<<< orphan*/  tree ;

/* Variables and functions */
 int BITS_PER_UNIT ; 
 scalar_t__ BYTES_BIG_ENDIAN ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int HOST_BITS_PER_WIDE_INT ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int UNITS_PER_WORD ; 
 scalar_t__ WORDS_BIG_ENDIAN ; 

__attribute__((used)) static int
FUNC5 (tree expr, unsigned char *ptr, int len)
{
  tree type = FUNC3 (expr);
  int total_bytes = FUNC0 (FUNC4 (type));
  int byte, offset, word, words;
  unsigned char value;

  if (total_bytes > len)
    return 0;
  words = total_bytes / UNITS_PER_WORD;

  for (byte = 0; byte < total_bytes; byte++)
    {
      int bitpos = byte * BITS_PER_UNIT;
      if (bitpos < HOST_BITS_PER_WIDE_INT)
	value = (unsigned char) (FUNC2 (expr) >> bitpos);
      else
	value = (unsigned char) (FUNC1 (expr)
				 >> (bitpos - HOST_BITS_PER_WIDE_INT));

      if (total_bytes > UNITS_PER_WORD)
	{
	  word = byte / UNITS_PER_WORD;
	  if (WORDS_BIG_ENDIAN)
	    word = (words - 1) - word;
	  offset = word * UNITS_PER_WORD;
	  if (BYTES_BIG_ENDIAN)
	    offset += (UNITS_PER_WORD - 1) - (byte % UNITS_PER_WORD);
	  else
	    offset += byte % UNITS_PER_WORD;
	}
      else
	offset = BYTES_BIG_ENDIAN ? (total_bytes - 1) - byte : byte;
      ptr[offset] = value;
    }
  return total_bytes;
}