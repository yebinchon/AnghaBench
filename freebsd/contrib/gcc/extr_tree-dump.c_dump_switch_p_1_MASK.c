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
struct dump_option_value_info {char const* name; int value; } ;
struct dump_file_info {int state; int flags; int /*<<< orphan*/ * suffix; int /*<<< orphan*/  swtch; int /*<<< orphan*/  glob; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 struct dump_option_value_info* dump_options ; 
 int /*<<< orphan*/  FUNC1 (char const*,char const*,unsigned int) ; 
 char* FUNC2 (char const*,int /*<<< orphan*/ ) ; 
 char* FUNC3 (char const*,char) ; 
 unsigned int FUNC4 (char const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,unsigned int,char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6 (const char *arg, struct dump_file_info *dfi, bool doglob)
{
  const char *option_value;
  const char *ptr;
  int flags;
  
  if (doglob && !dfi->glob)
    return 0;

  option_value = FUNC2 (arg, doglob ? dfi->glob : dfi->swtch);
  if (!option_value)
    return 0;

  ptr = option_value;
  flags = 0;

  while (*ptr)
    {
      const struct dump_option_value_info *option_ptr;
      const char *end_ptr;
      unsigned length;

      while (*ptr == '-')
	ptr++;
      end_ptr = FUNC3 (ptr, '-');
      if (!end_ptr)
	end_ptr = ptr + FUNC4 (ptr);
      length = end_ptr - ptr;

      for (option_ptr = dump_options; option_ptr->name; option_ptr++)
	if (FUNC4 (option_ptr->name) == length
	    && !FUNC1 (option_ptr->name, ptr, length))
	  {
	    flags |= option_ptr->value;
	    goto found;
	  }
      FUNC5 (0, "ignoring unknown option %q.*s in %<-fdump-%s%>",
	       length, ptr, dfi->swtch);
    found:;
      ptr = end_ptr;
    }

  dfi->state = -1;
  dfi->flags |= flags;

  /* Process -fdump-tree-all and -fdump-rtl-all, by enabling all the
     known dumps.  */
  if (dfi->suffix == NULL)
    FUNC0 (dfi->flags, 0);

  return 1;
}