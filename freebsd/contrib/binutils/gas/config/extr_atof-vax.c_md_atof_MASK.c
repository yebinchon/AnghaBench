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
typedef  int /*<<< orphan*/  LITTLENUM_TYPE ;

/* Variables and functions */
 int MAXIMUM_NUMBER_OF_LITTLENUMS ; 
 char* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char,int /*<<< orphan*/ *) ; 
 unsigned int FUNC2 (char) ; 
 int /*<<< orphan*/  input_line_pointer ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int) ; 

char *
FUNC5 (int what_statement_type,
	 char *literalP,
	 int *sizeP)
{
  LITTLENUM_TYPE words[MAXIMUM_NUMBER_OF_LITTLENUMS];
  char kind_of_float;
  unsigned int number_of_chars;
  LITTLENUM_TYPE *littlenumP;

  switch (what_statement_type)
    {
    case 'F':
    case 'f':
      kind_of_float = 'f';
      break;

    case 'D':
    case 'd':
      kind_of_float = 'd';
      break;

    case 'g':
      kind_of_float = 'g';
      break;

    case 'h':
      kind_of_float = 'h';
      break;

    default:
      kind_of_float = 0;
      break;
    };

  if (kind_of_float)
    {
      LITTLENUM_TYPE *limit;

      input_line_pointer = FUNC1 (input_line_pointer,
				     kind_of_float,
				     words);
      /* The atof_vax() builds up 16-bit numbers.
         Since the assembler may not be running on
         a little-endian machine, be very careful about
         converting words to chars.  */
      number_of_chars = FUNC2 (kind_of_float);
      FUNC3 (number_of_chars <= MAXIMUM_NUMBER_OF_LITTLENUMS * sizeof (LITTLENUM_TYPE));
      limit = words + (number_of_chars / sizeof (LITTLENUM_TYPE));
      for (littlenumP = words; littlenumP < limit; littlenumP++)
	{
	  FUNC4 (literalP, *littlenumP, sizeof (LITTLENUM_TYPE));
	  literalP += sizeof (LITTLENUM_TYPE);
	};
    }
  else
    number_of_chars = 0;

  *sizeP = number_of_chars;
  return kind_of_float ? NULL : FUNC0("Bad call to md_atof()");
}