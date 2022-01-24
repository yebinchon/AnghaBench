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

/* Variables and functions */
 int /*<<< orphan*/  DOLLAR_LABEL_CHAR ; 
 int /*<<< orphan*/  LOCAL_LABEL_PREFIX ; 
 int FUNC0 (long) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

char *				/* Return local label name.  */
FUNC2 (register long n,	/* we just saw "n$:" : n a number.  */
		   register int augend	/* 0 for current instance, 1 for new instance.  */)
{
  long i;
  /* Returned to caller, then copied.  Used for created names ("4f").  */
  static char symbol_name_build[24];
  register char *p;
  register char *q;
  char symbol_name_temporary[20];	/* Build up a number, BACKWARDS.  */

  FUNC1 (n >= 0);
  FUNC1 (augend == 0 || augend == 1);
  p = symbol_name_build;
#ifdef LOCAL_LABEL_PREFIX
  *p++ = LOCAL_LABEL_PREFIX;
#endif
  *p++ = 'L';

  /* Next code just does sprintf( {}, "%d", n);  */
  /* Label number.  */
  q = symbol_name_temporary;
  for (*q++ = 0, i = n; i; ++q)
    {
      *q = i % 10 + '0';
      i /= 10;
    }
  while ((*p = *--q) != '\0')
    ++p;

  *p++ = DOLLAR_LABEL_CHAR;		/* ^A  */

  /* Instance number.  */
  q = symbol_name_temporary;
  for (*q++ = 0, i = FUNC0 (n) + augend; i; ++q)
    {
      *q = i % 10 + '0';
      i /= 10;
    }
  while ((*p++ = *--q) != '\0')
	;;

  /* The label, as a '\0' ended string, starts at symbol_name_build.  */
  return symbol_name_build;
}