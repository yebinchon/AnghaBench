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

/* Variables and functions */
 scalar_t__ FUNC0 (char const) ; 

__attribute__((used)) static size_t
FUNC1 (uchar *dest, const uchar *src, size_t len, uchar *pquote)
{
  uchar *orig_dest = dest;
  uchar quote = *pquote;

  while (len)
    {
      if (FUNC0 (*src) && !quote)
	{
	  do
	    src++, len--;
	  while (len && FUNC0 (*src));
	  *dest++ = ' ';
	}
      else
	{
	  if (*src == '\'' || *src == '"')
	    {
	      if (!quote)
		quote = *src;
	      else if (quote == *src)
		quote = 0;
	    }
	  *dest++ = *src++, len--;
	}
    }

  *pquote = quote;
  return dest - orig_dest;
}