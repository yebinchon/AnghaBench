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
struct macro_buffer {char* text; scalar_t__ last_token; } ;
struct cleanup {int dummy; } ;
typedef  int /*<<< orphan*/  macro_lookup_ftype ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct macro_buffer*,char) ; 
 int /*<<< orphan*/  cleanup_macro_buffer ; 
 int /*<<< orphan*/  FUNC1 (struct cleanup*) ; 
 int /*<<< orphan*/  FUNC2 (struct macro_buffer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct macro_buffer*,char*,int /*<<< orphan*/ ) ; 
 struct cleanup* FUNC4 (int /*<<< orphan*/ ,struct macro_buffer*) ; 
 int /*<<< orphan*/  FUNC5 (struct macro_buffer*,struct macro_buffer*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,void*) ; 
 int /*<<< orphan*/  FUNC6 (char const*) ; 

char *
FUNC7 (const char *source,
              macro_lookup_ftype *lookup_func,
              void *lookup_func_baton)
{
  struct macro_buffer src, dest;
  struct cleanup *back_to;

  FUNC3 (&src, (char *) source, FUNC6 (source));

  FUNC2 (&dest, 0);
  dest.last_token = 0;
  back_to = FUNC4 (cleanup_macro_buffer, &dest);

  FUNC5 (&dest, &src, 0, lookup_func, lookup_func_baton);

  FUNC0 (&dest, '\0');

  FUNC1 (back_to);
  return dest.text;
}