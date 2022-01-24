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
struct demangle_component {int dummy; } ;
struct d_info {int dummy; } ;
typedef  enum demangle_component_type { ____Placeholder_demangle_component_type } demangle_component_type ;

/* Variables and functions */
 int DEMANGLE_COMPONENT_QUAL_NAME ; 
 int DEMANGLE_COMPONENT_TEMPLATE ; 
 scalar_t__ FUNC0 (char) ; 
 scalar_t__ FUNC1 (char) ; 
 int /*<<< orphan*/  FUNC2 (struct d_info*,struct demangle_component*) ; 
 struct demangle_component* FUNC3 (struct d_info*,int,struct demangle_component*,struct demangle_component*) ; 
 char FUNC4 (struct d_info*) ; 
 struct demangle_component* FUNC5 (struct d_info*,int) ; 
 struct demangle_component* FUNC6 (struct d_info*) ; 
 struct demangle_component* FUNC7 (struct d_info*) ; 
 struct demangle_component* FUNC8 (struct d_info*) ; 

__attribute__((used)) static struct demangle_component *
FUNC9 (struct d_info *di)
{
  struct demangle_component *ret = NULL;

  while (1)
    {
      char peek;
      enum demangle_component_type comb_type;
      struct demangle_component *dc;

      peek = FUNC4 (di);
      if (peek == '\0')
	return NULL;

      /* The older code accepts a <local-name> here, but I don't see
	 that in the grammar.  The older code does not accept a
	 <template-param> here.  */

      comb_type = DEMANGLE_COMPONENT_QUAL_NAME;
      if (FUNC0 (peek)
	  || FUNC1 (peek)
	  || peek == 'C'
	  || peek == 'D'
	  || peek == 'L')
	dc = FUNC8 (di);
      else if (peek == 'S')
	dc = FUNC5 (di, 1);
      else if (peek == 'I')
	{
	  if (ret == NULL)
	    return NULL;
	  comb_type = DEMANGLE_COMPONENT_TEMPLATE;
	  dc = FUNC6 (di);
	}
      else if (peek == 'T')
	dc = FUNC7 (di);
      else if (peek == 'E')
	return ret;
      else
	return NULL;

      if (ret == NULL)
	ret = dc;
      else
	ret = FUNC3 (di, comb_type, ret, dc);

      if (peek != 'S' && FUNC4 (di) != 'E')
	{
	  if (! FUNC2 (di, ret))
	    return NULL;
	}
    }
}