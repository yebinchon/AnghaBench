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
struct cpp_buffer {int dummy; } ;
typedef  int /*<<< orphan*/  cpp_reader ;
typedef  int /*<<< orphan*/  cpp_dir ;

/* Variables and functions */
 struct cpp_buffer* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (struct cpp_buffer*) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 struct cpp_buffer* FUNC4 (struct cpp_buffer*) ; 
 char* FUNC5 (char const*,scalar_t__) ; 

__attribute__((used)) static const char*
FUNC6 (cpp_reader *pfile, const char *header, cpp_dir **dirp)
{
  const char *fname = header;
  struct cpp_buffer *b;
  const char *n;

  for (b = FUNC0 (pfile);
       b && FUNC2 (b) && FUNC3 (FUNC2 (b));
       b = FUNC4 (b))
    {
      n = FUNC5 (fname, FUNC3 (FUNC2 (b)));
      if (n)
	{
	  /* Logically, the place where we found the subframework is
	     the place where we found the Framework that contains the
	     subframework.  This is useful for tracking wether or not
	     we are in a system header.  */
	  *dirp = FUNC1 (FUNC2 (b));
	  return n;
	}
    }

  return 0;
}