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
struct symbol {int dummy; } ;

/* Variables and functions */
 unsigned int ANONYMOUS_NAMESPACE_LEN ; 
 char* FUNC0 (struct symbol const*) ; 
 int /*<<< orphan*/  FUNC1 (char const*,unsigned int,unsigned int) ; 
 unsigned int FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 (char const*) ; 
 int /*<<< orphan*/  processing_has_namespace_info ; 
 scalar_t__ FUNC4 (char const*,char*,unsigned int) ; 

void
FUNC5 (const struct symbol *symbol)
{
  if (!processing_has_namespace_info
      && FUNC0 (symbol) != NULL)
    {
      const char *name = FUNC0 (symbol);
      unsigned int previous_component;
      unsigned int next_component;
      const char *len;

      /* Start with a quick-and-dirty check for mention of "(anonymous
	 namespace)".  */

      if (!FUNC3 (name))
	return;

      previous_component = 0;
      next_component = FUNC2 (name + previous_component);

      while (name[next_component] == ':')
	{
	  if ((next_component - previous_component) == ANONYMOUS_NAMESPACE_LEN
	      && FUNC4 (name + previous_component,
			  "(anonymous namespace)",
			  ANONYMOUS_NAMESPACE_LEN) == 0)
	    {
	      /* We've found a component of the name that's an
		 anonymous namespace.  So add symbols in it to the
		 namespace given by the previous component if there is
		 one, or to the global namespace if there isn't.  */
	      FUNC1 (name,
				      previous_component == 0
				      ? 0 : previous_component - 2,
				      next_component);
	    }
	  /* The "+ 2" is for the "::".  */
	  previous_component = next_component + 2;
	  next_component = (previous_component
			    + FUNC2 (name
						       + previous_component));
	}
    }
}