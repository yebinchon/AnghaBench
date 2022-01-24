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
typedef  unsigned int LITTLENUM_TYPE ;

/* Variables and functions */
 int FAIL ; 
 int LITTLENUM_NUMBER_OF_BITS ; 
 int MAX_LITTLENUMS ; 
 int SUCCESS ; 
 char* FUNC0 (char*,char,unsigned int*) ; 
 scalar_t__ FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (char**,char) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 scalar_t__ FUNC4 (char*,char*,int) ; 

__attribute__((used)) static unsigned
FUNC5 (char **ccp, int *immed)
{
  char *str = *ccp;
  char *fpnum;
  LITTLENUM_TYPE words[MAX_LITTLENUMS];
  int found_fpchar = 0;
  
  FUNC2 (&str, '#');
  
  /* We must not accidentally parse an integer as a floating-point number. Make
     sure that the value we parse is not an integer by checking for special
     characters '.' or 'e'.
     FIXME: This is a horrible hack, but doing better is tricky because type
     information isn't in a very usable state at parse time.  */
  fpnum = str;
  FUNC3 (fpnum);

  if (FUNC4 (fpnum, "0x", 2) == 0)
    return FAIL;
  else
    {
      for (; *fpnum != '\0' && *fpnum != ' ' && *fpnum != '\n'; fpnum++)
        if (*fpnum == '.' || *fpnum == 'e' || *fpnum == 'E')
          {
            found_fpchar = 1;
            break;
          }

      if (!found_fpchar)
        return FAIL;
    }
  
  if ((str = FUNC0 (str, 's', words)) != NULL)
    {
      unsigned fpword = 0;
      int i;
      
      /* Our FP word must be 32 bits (single-precision FP).  */
      for (i = 0; i < 32 / LITTLENUM_NUMBER_OF_BITS; i++)
        {
          fpword <<= LITTLENUM_NUMBER_OF_BITS;
          fpword |= words[i];
        }
      
      if (FUNC1 (fpword) || (fpword & 0x7fffffff) == 0)
        *immed = fpword;
      else
        return FAIL;

      *ccp = str;
      
      return SUCCESS;
    }
  
  return FAIL;
}