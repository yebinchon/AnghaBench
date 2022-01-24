#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  size_t cppchar_t ;
struct TYPE_3__ {size_t len; size_t* text; } ;
typedef  TYPE_1__ cpp_string ;
typedef  int /*<<< orphan*/  cpp_reader ;

/* Variables and functions */
 size_t BITS_PER_CPPCHAR_T ; 
 int /*<<< orphan*/  CPP_DL_WARNING ; 
 void* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  bytes_big_endian ; 
 int /*<<< orphan*/  char_precision ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  unsigned_wchar ; 
 int /*<<< orphan*/  wchar_precision ; 
 size_t FUNC2 (size_t) ; 

__attribute__((used)) static cppchar_t
FUNC3 (cpp_reader *pfile, cpp_string str,
		       unsigned int *pchars_seen, int *unsignedp)
{
  bool bigend = FUNC0 (pfile, bytes_big_endian);
  size_t width = FUNC0 (pfile, wchar_precision);
  size_t cwidth = FUNC0 (pfile, char_precision);
  size_t mask = FUNC2 (width);
  size_t cmask = FUNC2 (cwidth);
  size_t nbwc = width / cwidth;
  size_t off, i;
  cppchar_t result = 0, c;

  /* This is finicky because the string is in the target's byte order,
     which may not be our byte order.  Only the last character, ignoring
     the NUL terminator, is relevant.  */
  off = str.len - (nbwc * 2);
  result = 0;
  for (i = 0; i < nbwc; i++)
    {
      c = bigend ? str.text[off + i] : str.text[off + nbwc - i - 1];
      result = (result << cwidth) | (c & cmask);
    }

  /* Wide character constants have type wchar_t, and a single
     character exactly fills a wchar_t, so a multi-character wide
     character constant is guaranteed to overflow.  */
  if (off > 0)
    FUNC1 (pfile, CPP_DL_WARNING,
	       "character constant too long for its type");

  /* Truncate the constant to its natural width, and simultaneously
     sign- or zero-extend to the full width of cppchar_t.  */
  if (width < BITS_PER_CPPCHAR_T)
    {
      if (FUNC0 (pfile, unsigned_wchar) || !(result & (1 << (width - 1))))
	result &= mask;
      else
	result |= ~mask;
    }

  *unsignedp = FUNC0 (pfile, unsigned_wchar);
  *pchars_seen = 1;
  return result;
}