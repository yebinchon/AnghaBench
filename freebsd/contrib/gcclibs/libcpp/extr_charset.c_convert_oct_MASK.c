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
typedef  char uchar ;
struct _cpp_strbuf {int dummy; } ;
typedef  char cppchar_t ;
typedef  int /*<<< orphan*/  cpp_reader ;

/* Variables and functions */
 int /*<<< orphan*/  CPP_DL_PEDWARN ; 
 size_t FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  char_precision ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char,struct _cpp_strbuf*,int) ; 
 int /*<<< orphan*/  wchar_precision ; 
 size_t FUNC3 (size_t) ; 

__attribute__((used)) static const uchar *
FUNC4 (cpp_reader *pfile, const uchar *from, const uchar *limit,
	     struct _cpp_strbuf *tbuf, bool wide)
{
  size_t count = 0;
  cppchar_t c, n = 0;
  size_t width = (wide ? FUNC0 (pfile, wchar_precision)
		  : FUNC0 (pfile, char_precision));
  size_t mask = FUNC3 (width);
  bool overflow = false;

  while (from < limit && count++ < 3)
    {
      c = *from;
      if (c < '0' || c > '7')
	break;
      from++;
      overflow |= n ^ (n << 3 >> 3);
      n = (n << 3) + c - '0';
    }

  if (n != (n & mask))
    {
      FUNC1 (pfile, CPP_DL_PEDWARN,
		 "octal escape sequence out of range");
      n &= mask;
    }

  FUNC2 (pfile, n, tbuf, wide);

  return from;
}