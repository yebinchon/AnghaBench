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
struct c_declspecs {int dummy; } ;
struct c_declarator {int dummy; } ;
typedef  int /*<<< orphan*/  c_parser ;
typedef  int /*<<< orphan*/  c_dtr_syn ;

/* Variables and functions */
 int /*<<< orphan*/  CPP_MULT ; 
 int /*<<< orphan*/  CPP_XOR ; 
 struct c_declspecs* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct c_declspecs*,int,int,int) ; 
 struct c_declarator* FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ flag_blocks ; 
 struct c_declarator* FUNC5 (struct c_declspecs*,struct c_declarator*) ; 
 struct c_declarator* FUNC6 (struct c_declspecs*,struct c_declarator*) ; 

__attribute__((used)) static struct c_declarator *
FUNC7 (c_parser *parser, bool type_seen_p, c_dtr_syn kind,
		     bool *seen_id)
{
  /* Parse any initial pointer part.  */
  if (FUNC4 (parser, CPP_MULT))
    {
      struct c_declspecs *quals_attrs = FUNC0 ();
      struct c_declarator *inner;
      FUNC1 (parser);
      FUNC2 (parser, quals_attrs, false, false, true);
      inner = FUNC7 (parser, type_seen_p, kind, seen_id);
      if (inner == NULL)
	return NULL;
      else
	return FUNC6 (quals_attrs, inner);
    }
  /* APPLE LOCAL begin radar 5732232 - blocks (C++ cc) */
  else if (flag_blocks && FUNC4 (parser, CPP_XOR)) {
    struct c_declspecs *quals_attrs = FUNC0 ();
    struct c_declarator *inner;
    FUNC1 (parser);
    FUNC2 (parser, quals_attrs, false, false, true);
    inner = FUNC7 (parser, type_seen_p, kind, seen_id);
    if (inner == NULL)
      return NULL;
    else
      /* APPLE LOCAL radar 5814025 (C++ cc) */
      return FUNC5 (quals_attrs, inner);    
  }
  /* APPLE LOCAL end radar 5732232 - blocks (C++ cc) */
  /* Now we have a direct declarator, direct abstract declarator or
     nothing (which counts as a direct abstract declarator here).  */
  return FUNC3 (parser, type_seen_p, kind, seen_id);
}