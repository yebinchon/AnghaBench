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
typedef  scalar_t__ tree ;
struct TYPE_3__ {scalar_t__ scope; char const* object_scope; } ;
typedef  TYPE_1__ cp_parser ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (char*,scalar_t__,...) ; 
 scalar_t__ error_mark_node ; 
 scalar_t__ global_namespace ; 

__attribute__((used)) static void
FUNC2 (cp_parser* parser,
			     tree name,
			     tree decl,
			     const char* desired)
{
  /* If name lookup completely failed, tell the user that NAME was not
     declared.  */
  if (decl == error_mark_node)
    {
      if (parser->scope && parser->scope != global_namespace)
	FUNC1 ("%<%D::%D%> has not been declared",
	       parser->scope, name);
      else if (parser->scope == global_namespace)
	FUNC1 ("%<::%D%> has not been declared", name);
      else if (parser->object_scope
	       && !FUNC0 (parser->object_scope))
	FUNC1 ("request for member %qD in non-class type %qT",
	       name, parser->object_scope);
      else if (parser->object_scope)
	FUNC1 ("%<%T::%D%> has not been declared",
	       parser->object_scope, name);
      else
	FUNC1 ("%qD has not been declared", name);
    }
  else if (parser->scope && parser->scope != global_namespace)
    FUNC1 ("%<%D::%D%> %s", parser->scope, name, desired);
  else if (parser->scope == global_namespace)
    FUNC1 ("%<::%D%> %s", name, desired);
  else
    FUNC1 ("%qD %s", name, desired);
}