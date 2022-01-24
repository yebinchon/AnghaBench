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
typedef  int bfd_vma ;

/* Variables and functions */
 scalar_t__ FUNC0 (unsigned int) ; 
 scalar_t__ FUNC1 (unsigned int) ; 
 scalar_t__ FUNC2 (char const) ; 
 char FUNC3 (unsigned int) ; 
 int FUNC4 (char const*,char**,int) ; 
 int FUNC5 (char const*,char**,int) ; 

bfd_vma
FUNC6 (const char *string, const char **end, int base)
{
  bfd_vma value;
  bfd_vma cutoff;
  unsigned int cutlim;
  int overflow;

  /* Let the host do it if possible.  */
  if (sizeof (bfd_vma) <= sizeof (unsigned long))
    return FUNC4 (string, (char **) end, base);

#ifdef HAVE_STRTOULL
  if (sizeof (bfd_vma) <= sizeof (unsigned long long))
    return strtoull (string, (char **) end, base);
#endif

  if (base == 0)
    {
      if (string[0] == '0')
	{
	  if ((string[1] == 'x') || (string[1] == 'X'))
	    base = 16;
	  else
	    base = 8;
	}
    }

  if ((base < 2) || (base > 36))
    base = 10;

  if (base == 16
      && string[0] == '0'
      && (string[1] == 'x' || string[1] == 'X')
      && FUNC2 (string[2]))
    {
      string += 2;
    }

  cutoff = (~ (bfd_vma) 0) / (bfd_vma) base;
  cutlim = (~ (bfd_vma) 0) % (bfd_vma) base;
  value = 0;
  overflow = 0;
  while (1)
    {
      unsigned int digit;

      digit = *string;
      if (FUNC1 (digit))
	digit = digit - '0';
      else if (FUNC0 (digit))
	digit = FUNC3 (digit) - 'A' + 10;
      else
	break;
      if (digit >= (unsigned int) base)
	break;
      if (value > cutoff || (value == cutoff && digit > cutlim))
	overflow = 1;
      value = value * base + digit;
      ++string;
    }

  if (overflow)
    value = ~ (bfd_vma) 0;

  if (end != NULL)
    *end = string;

  return value;
}