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
typedef  scalar_t__ tree ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (char const*,scalar_t__,scalar_t__) ; 

__attribute__((used)) static void
FUNC4 (tree reftype, tree intype, tree decl)
{
  tree ttl = FUNC2 (reftype);

  if (!FUNC0 (ttl))
    {
      const char *msg;

      if (FUNC1 (ttl) && decl)
	  msg = "initialization of volatile reference type %q#T from"
	    " rvalue of type %qT";
      else if (FUNC1 (ttl))
	  msg = "conversion to volatile reference type %q#T "
	    " from rvalue of type %qT";
      else if (decl)
	  msg = "initialization of non-const reference type %q#T from"
	    " rvalue of type %qT";
      else
	  msg = "conversion to non-const reference type %q#T from"
	    " rvalue of type %qT";

      FUNC3 (msg, reftype, intype);
    }
}