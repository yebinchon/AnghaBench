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
typedef  int /*<<< orphan*/  valueT ;
typedef  scalar_t__ LITTLENUM_TYPE ;

/* Variables and functions */
 int MAX_LITTLENUMS ; 
 char* FUNC0 (char*) ; 
 char* FUNC1 (char*,int,scalar_t__*) ; 
 char* input_line_pointer ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ target_big_endian ; 

char *
FUNC3 (int type, char *litP, int *sizeP)
{
  int prec;
  LITTLENUM_TYPE words[MAX_LITTLENUMS];
  char *t;
  int i;

  switch (type)
    {
    case 'f':
    case 'F':
    case 's':
    case 'S':
      prec = 2;
      break;
    case 'd':
    case 'D':
    case 'r':
    case 'R':
      prec = 4;
      break;
    case 'x':
    case 'X':
    case 'p':
    case 'P':
      prec = 6;
      break;
    default:
      *sizeP = 0;
      return FUNC0("bad call to MD_ATOF()");
    }

  t = FUNC1 (input_line_pointer, type, words);
  if (t)
    input_line_pointer = t;
  *sizeP = prec * 2;

  if (target_big_endian)
    {
      for (i = 0; i < prec; i++)
        {
          FUNC2 (litP, (valueT) words[i], 2);
          litP += 2;
        }
    }
  else
    {
      for (i = 0; i < prec; i += 2)
        {
          FUNC2 (litP, (valueT) words[i + 1], 2);
          FUNC2 (litP + 2, (valueT) words[i], 2);
          litP += 4;
        }
    }

  return 0;
}