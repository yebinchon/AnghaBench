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
typedef  int /*<<< orphan*/  rtx ;
typedef  int HOST_WIDE_INT ;

/* Variables and functions */
 int /*<<< orphan*/  DImode ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  TARGET_POWERPC64 ; 
 scalar_t__ WORDS_BIG_ENDIAN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static rtx
FUNC5 (rtx dest, HOST_WIDE_INT c1, HOST_WIDE_INT c2)
{
  if (!TARGET_POWERPC64)
    {
      rtx operand1, operand2;

      operand1 = FUNC4 (dest, WORDS_BIG_ENDIAN == 0,
					DImode);
      operand2 = FUNC4 (dest, WORDS_BIG_ENDIAN != 0,
					DImode);
      FUNC1 (operand1, FUNC0 (c1));
      FUNC1 (operand2, FUNC0 (c2));
    }
  else
    {
      HOST_WIDE_INT ud1, ud2, ud3, ud4;

      ud1 = c1 & 0xffff;
      ud2 = (c1 & 0xffff0000) >> 16;
#if HOST_BITS_PER_WIDE_INT >= 64
      c2 = c1 >> 32;
#endif
      ud3 = c2 & 0xffff;
      ud4 = (c2 & 0xffff0000) >> 16;

      if ((ud4 == 0xffff && ud3 == 0xffff && ud2 == 0xffff && (ud1 & 0x8000))
	  || (ud4 == 0 && ud3 == 0 && ud2 == 0 && ! (ud1 & 0x8000)))
	{
	  if (ud1 & 0x8000)
	    FUNC1 (dest, FUNC0 (((ud1 ^ 0x8000) -  0x8000)));
	  else
	    FUNC1 (dest, FUNC0 (ud1));
	}

      else if ((ud4 == 0xffff && ud3 == 0xffff && (ud2 & 0x8000))
	       || (ud4 == 0 && ud3 == 0 && ! (ud2 & 0x8000)))
	{
	  if (ud2 & 0x8000)
	    FUNC1 (dest, FUNC0 (((ud2 << 16) ^ 0x80000000)
					   - 0x80000000));
	  else
	    FUNC1 (dest, FUNC0 (ud2 << 16));
	  if (ud1 != 0)
	    FUNC1 (dest, FUNC3 (DImode, dest, FUNC0 (ud1)));
	}
      else if ((ud4 == 0xffff && (ud3 & 0x8000))
	       || (ud4 == 0 && ! (ud3 & 0x8000)))
	{
	  if (ud3 & 0x8000)
	    FUNC1 (dest, FUNC0 (((ud3 << 16) ^ 0x80000000)
					   - 0x80000000));
	  else
	    FUNC1 (dest, FUNC0 (ud3 << 16));

	  if (ud2 != 0)
	    FUNC1 (dest, FUNC3 (DImode, dest, FUNC0 (ud2)));
	  FUNC1 (dest, FUNC2 (DImode, dest, FUNC0 (16)));
	  if (ud1 != 0)
	    FUNC1 (dest, FUNC3 (DImode, dest, FUNC0 (ud1)));
	}
      else
	{
	  if (ud4 & 0x8000)
	    FUNC1 (dest, FUNC0 (((ud4 << 16) ^ 0x80000000)
					   - 0x80000000));
	  else
	    FUNC1 (dest, FUNC0 (ud4 << 16));

	  if (ud3 != 0)
	    FUNC1 (dest, FUNC3 (DImode, dest, FUNC0 (ud3)));

	  FUNC1 (dest, FUNC2 (DImode, dest, FUNC0 (32)));
	  if (ud2 != 0)
	    FUNC1 (dest, FUNC3 (DImode, dest,
					       FUNC0 (ud2 << 16)));
	  if (ud1 != 0)
	    FUNC1 (dest, FUNC3 (DImode, dest, FUNC0 (ud1)));
	}
    }
  return dest;
}