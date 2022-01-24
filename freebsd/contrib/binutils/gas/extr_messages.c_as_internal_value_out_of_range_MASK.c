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
typedef  int /*<<< orphan*/  val ;
typedef  scalar_t__ offsetT ;
typedef  int /*<<< orphan*/  bfd_vma ;
typedef  scalar_t__ addressT ;

/* Variables and functions */
 scalar_t__ HEX_MAX_THRESHOLD ; 
 scalar_t__ HEX_MIN_THRESHOLD ; 
 char* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*,unsigned int,char const*,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (char*,unsigned int,char const*,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (char*,scalar_t__) ; 

__attribute__((used)) static void
FUNC5 (char *    prefix,
				offsetT   val,
				offsetT   min,
				offsetT   max,
				char *    file,
				unsigned  line,
				int       bad)
{
  const char * err;

  if (prefix == NULL)
    prefix = "";

  if (val >= min && val <= max)
    {
      addressT right = max & -max;

      if (max <= 1)
	FUNC1 ();

      /* xgettext:c-format  */
      err = FUNC0("%s out of domain (%d is not a multiple of %d)");
      if (bad)
	FUNC2 (file, line, err,
		      prefix, (int) val, (int) right);
      else
	FUNC3 (file, line, err,
		       prefix, (int) val, (int) right);
      return;
    }

  if (   val < HEX_MAX_THRESHOLD
      && min < HEX_MAX_THRESHOLD
      && max < HEX_MAX_THRESHOLD
      && val > HEX_MIN_THRESHOLD
      && min > HEX_MIN_THRESHOLD
      && max > HEX_MIN_THRESHOLD)
    {
      /* xgettext:c-format  */
      err = FUNC0("%s out of range (%d is not between %d and %d)");

      if (bad)
	FUNC2 (file, line, err,
		      prefix, (int) val, (int) min, (int) max);
      else
	FUNC3 (file, line, err,
		       prefix, (int) val, (int) min, (int) max);
    }
  else
    {
      char val_buf [sizeof (val) * 3 + 2];
      char min_buf [sizeof (val) * 3 + 2];
      char max_buf [sizeof (val) * 3 + 2];

      if (sizeof (val) > sizeof (bfd_vma))
	FUNC1 ();

      FUNC4 (val_buf, val);
      FUNC4 (min_buf, min);
      FUNC4 (max_buf, max);

      /* xgettext:c-format.  */
      err = FUNC0("%s out of range (0x%s is not between 0x%s and 0x%s)");

      if (bad)
	FUNC2 (file, line, err, prefix, val_buf, min_buf, max_buf);
      else
	FUNC3 (file, line, err, prefix, val_buf, min_buf, max_buf);
    }
}