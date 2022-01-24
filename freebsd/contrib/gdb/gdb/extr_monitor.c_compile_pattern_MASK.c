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
struct re_pattern_buffer {char* fastmap; } ;

/* Variables and functions */
 int RE_SYNTAX_EMACS ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (struct re_pattern_buffer*) ; 
 char* FUNC2 (char*,int /*<<< orphan*/ ,struct re_pattern_buffer*) ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

__attribute__((used)) static void
FUNC5 (char *pattern, struct re_pattern_buffer *compiled_pattern,
		 char *fastmap)
{
  int tmp;
  const char *val;

  compiled_pattern->fastmap = fastmap;

  tmp = FUNC3 (RE_SYNTAX_EMACS);
  val = FUNC2 (pattern,
			    FUNC4 (pattern),
			    compiled_pattern);
  FUNC3 (tmp);

  if (val)
    FUNC0 ("compile_pattern: Can't compile pattern string `%s': %s!", pattern, val);

  if (fastmap)
    FUNC1 (compiled_pattern);
}