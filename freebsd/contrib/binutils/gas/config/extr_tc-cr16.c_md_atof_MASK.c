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
 char* FUNC0 (char*) ; 
 char* FUNC1 (char*,int,scalar_t__*) ; 
 char* input_line_pointer ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  target_big_endian ; 

char *
FUNC3 (int type, char *litP, int *sizeP)
{
  int prec;
  int i;
  LITTLENUM_TYPE words[4];
  char *t;

  switch (type)
    {
      case 'f':
        prec = 2;
        break;

      case 'd':
        prec = 4;
        break;

      default:
        *sizeP = 0;
        return FUNC0("bad call to md_atof");
    }

  t = FUNC1 (input_line_pointer, type, words);
  if (t)
    input_line_pointer = t;

  *sizeP = prec * 2;

  if (! target_big_endian)
    {
      for (i = prec - 1; i >= 0; i--)
        {
          FUNC2 (litP, (valueT) words[i], 2);
          litP += 2;
        }
    }
  else
    {
      for (i = 0; i < prec; i++)
        {
          FUNC2 (litP, (valueT) words[i], 2);
          litP += 2;
        }
    }

  return NULL;
}