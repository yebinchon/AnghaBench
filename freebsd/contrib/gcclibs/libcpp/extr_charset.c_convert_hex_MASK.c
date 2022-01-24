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
typedef  int uchar ;
struct _cpp_strbuf {int dummy; } ;
typedef  int cppchar_t ;
typedef  int /*<<< orphan*/  cpp_reader ;

/* Variables and functions */
 int /*<<< orphan*/  CPP_DL_ERROR ; 
 int /*<<< orphan*/  CPP_DL_PEDWARN ; 
 int /*<<< orphan*/  CPP_DL_WARNING ; 
 size_t FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  char_precision ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,struct _cpp_strbuf*,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 (int) ; 
 int /*<<< orphan*/  wchar_precision ; 
 size_t FUNC6 (size_t) ; 

__attribute__((used)) static const uchar *
FUNC7 (cpp_reader *pfile, const uchar *from, const uchar *limit,
	     struct _cpp_strbuf *tbuf, bool wide)
{
  cppchar_t c, n = 0, overflow = 0;
  int digits_found = 0;
  size_t width = (wide ? FUNC0 (pfile, wchar_precision)
		  : FUNC0 (pfile, char_precision));
  size_t mask = FUNC6 (width);

  if (FUNC1 (pfile))
    FUNC2 (pfile, CPP_DL_WARNING,
	       "the meaning of '\\x' is different in traditional C");

  from++;  /* Skip 'x'.  */
  while (from < limit)
    {
      c = *from;
      if (! FUNC4 (c))
	break;
      from++;
      overflow |= n ^ (n << 4 >> 4);
      n = (n << 4) + FUNC5 (c);
      digits_found = 1;
    }

  if (!digits_found)
    {
      FUNC2 (pfile, CPP_DL_ERROR,
		 "\\x used with no following hex digits");
      return from;
    }

  if (overflow | (n != (n & mask)))
    {
      FUNC2 (pfile, CPP_DL_PEDWARN,
		 "hex escape sequence out of range");
      n &= mask;
    }

  FUNC3 (pfile, n, tbuf, wide);

  return from;
}