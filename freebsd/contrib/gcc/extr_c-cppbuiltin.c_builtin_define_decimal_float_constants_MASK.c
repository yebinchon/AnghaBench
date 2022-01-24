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
struct real_format {int p; int emin; int emax; } ;

/* Variables and functions */
 struct real_format* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,...) ; 

__attribute__((used)) static void
FUNC5 (const char *name_prefix, 
					const char *suffix, 
					tree type)
{
  const struct real_format *fmt;
  char name[64], buf[128], *p;
  int digits;

  fmt = FUNC0 (FUNC1 (type));

  /* The number of radix digits, p, in the significand.  */
  FUNC4 (name, "__%s_MANT_DIG__", name_prefix);
  FUNC2 (name, fmt->p);

  /* The minimum negative int x such that b**(x-1) is a normalized float.  */
  FUNC4 (name, "__%s_MIN_EXP__", name_prefix);
  FUNC4 (buf, "(%d)", fmt->emin);
  FUNC3 (name, buf, 0);

  /* The maximum int x such that b**(x-1) is a representable float.  */
  FUNC4 (name, "__%s_MAX_EXP__", name_prefix);
  FUNC2 (name, fmt->emax);

  /* Compute the minimum representable value.  */
  FUNC4 (name, "__%s_MIN__", name_prefix);
  FUNC4 (buf, "1E%d%s", fmt->emin, suffix);
  FUNC3 (name, buf, 0); 

  /* Compute the maximum representable value.  */
  FUNC4 (name, "__%s_MAX__", name_prefix);
  p = buf;
  for (digits = fmt->p; digits; digits--)
    {
      *p++ = '9';
      if (digits == fmt->p)
	*p++ = '.';
    }
  *p = 0;
  /* fmt->p plus 1, to account for the decimal point.  */
  FUNC4 (&buf[fmt->p + 1], "E%d%s", fmt->emax, suffix); 
  FUNC3 (name, buf, 0);

  /* Compute epsilon (the difference between 1 and least value greater
     than 1 representable).  */
  FUNC4 (name, "__%s_EPSILON__", name_prefix);
  FUNC4 (buf, "1E-%d%s", fmt->p - 1, suffix);
  FUNC3 (name, buf, 0);

  /* Minimum denormalized postive decimal value.  */
  FUNC4 (name, "__%s_DEN__", name_prefix);
  p = buf;
  for (digits = fmt->p; digits > 1; digits--)
    {
      *p++ = '0';
      if (digits == fmt->p)
	*p++ = '.';
    }
  *p = 0;
  FUNC4 (&buf[fmt->p], "1E%d%s", fmt->emin, suffix); 
  FUNC3 (name, buf, 0);
}