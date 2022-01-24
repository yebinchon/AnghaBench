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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/ * outfile ; 
 size_t FUNC0 (char const* const*,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC1 (char,int /*<<< orphan*/ *) ; 
 size_t sdiff_column2_offset ; 
 size_t sdiff_half_width ; 
 int FUNC2 (size_t,size_t) ; 

__attribute__((used)) static void
FUNC3 (char const *const *left, char sep,
		   char const *const *right)
{
  FILE *out = outfile;
  size_t hw = sdiff_half_width;
  size_t c2o = sdiff_column2_offset;
  size_t col = 0;
  bool put_newline = false;

  if (left)
    {
      put_newline |= left[1][-1] == '\n';
      col = FUNC0 (left, 0, hw);
    }

  if (sep != ' ')
    {
      col = FUNC2 (col, (hw + c2o - 1) / 2) + 1;
      if (sep == '|' && put_newline != (right[1][-1] == '\n'))
	sep = put_newline ? '/' : '\\';
      FUNC1 (sep, out);
    }

  if (right)
    {
      put_newline |= right[1][-1] == '\n';
      if (**right != '\n')
	{
	  col = FUNC2 (col, c2o);
	  FUNC0 (right, col, hw);
	}
    }

  if (put_newline)
    FUNC1 ('\n', out);
}