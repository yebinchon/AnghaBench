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
typedef  void* tree ;
struct c_parm {int dummy; } ;
struct c_declspecs {int /*<<< orphan*/  type_seen_p; void* attrs; } ;
struct c_declarator {int dummy; } ;
typedef  int /*<<< orphan*/  c_parser ;

/* Variables and functions */
 int /*<<< orphan*/  CPP_COMMA ; 
 int /*<<< orphan*/  C_DTR_PARM ; 
 void* NULL_TREE ; 
 int /*<<< orphan*/  RID_ATTRIBUTE ; 
 struct c_parm* FUNC0 (struct c_declspecs*,int /*<<< orphan*/ ,struct c_declarator*) ; 
 struct c_declspecs* FUNC1 () ; 
 void* FUNC2 (int /*<<< orphan*/ *) ; 
 struct c_declarator* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct c_declspecs*,int,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (void*,void*) ; 
 int /*<<< orphan*/  FUNC11 (struct c_declspecs*,void*) ; 
 int /*<<< orphan*/  FUNC12 (struct c_declspecs*) ; 
 int /*<<< orphan*/  FUNC13 () ; 

__attribute__((used)) static struct c_parm *
FUNC14 (c_parser *parser, tree attrs)
{
  struct c_declspecs *specs;
  struct c_declarator *declarator;
  tree prefix_attrs;
  tree postfix_attrs = NULL_TREE;
  bool dummy = false;
  if (!FUNC7 (parser))
    {
      /* ??? In some Objective-C cases '...' isn't applicable so there
	 should be a different message.  */
      FUNC5 (parser,
		      "expected declaration specifiers or %<...%>");
      FUNC8 (parser);
      return NULL;
    }
  specs = FUNC1 ();
  if (attrs)
    {
      FUNC11 (specs, attrs);
      attrs = NULL_TREE;
    }
  FUNC4 (parser, specs, true, true, true);
  FUNC12 (specs);
  FUNC13 ();
  prefix_attrs = specs->attrs;
  specs->attrs = NULL_TREE;
  declarator = FUNC3 (parser, specs->type_seen_p,
				    C_DTR_PARM, &dummy);
  if (declarator == NULL)
    {
      FUNC9 (parser, CPP_COMMA, NULL);
      return NULL;
    }
  if (FUNC6 (parser, RID_ATTRIBUTE))
    postfix_attrs = FUNC2 (parser);
  return FUNC0 (specs, FUNC10 (postfix_attrs, prefix_attrs),
		       declarator);
}