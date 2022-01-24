#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tree ;
struct TYPE_2__ {int need_abi_warning; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/  const) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/  const) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/  const) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/  const) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/  const) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/  const) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/  const) ; 
 TYPE_1__ G ; 
 char* FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*,int /*<<< orphan*/  const) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/  const) ; 
 scalar_t__ VAR_DECL ; 
 scalar_t__ FUNC12 (int) ; 
 scalar_t__ global_namespace ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (char*) ; 

__attribute__((used)) static void
FUNC16 (const tree decl, bool top_level)
{
  FUNC10 ("mangled-name", decl);

  if (/* The names of `extern "C"' functions are not mangled.  */
      FUNC2 (decl)
      /* But overloaded operator names *are* mangled.  */
      && !FUNC8 (decl))
    {
    unmangled_name:;

      if (top_level)
	FUNC15 (FUNC9 (FUNC7 (decl)));
      else
	{
	  /* The standard notes: "The <encoding> of an extern "C"
	     function is treated like global-scope data, i.e. as its
	     <source-name> without a type."  We cannot write
	     overloaded operators that way though, because it contains
	     characters invalid in assembler.  */
	  if (FUNC12 (2))
	    FUNC15 ("_Z");
	  else
	    G.need_abi_warning = true;
	  FUNC14 (FUNC7 (decl));
	}
    }
  else if (FUNC11 (decl) == VAR_DECL
	   /* The names of non-static global variables aren't mangled.  */
	   && FUNC1 (decl)
	   && (FUNC0 (decl) == global_namespace
	       /* And neither are `extern "C"' variables.  */
	       || FUNC3 (decl)))
    {
      if (top_level || FUNC12 (2))
	goto unmangled_name;
      else
	{
	  G.need_abi_warning = true;
	  goto mangled_name;
	}
    }
  else
    {
    mangled_name:;
      FUNC15 ("_Z");
      FUNC13 (decl);
      if (FUNC4 (decl)
	  && (FUNC6 (decl)
	      || FUNC5 (decl)))
	/* We need a distinct mangled name for these entities, but
	   we should never actually output it.  So, we append some
	   characters the assembler won't like.  */
	FUNC15 (" *INTERNAL* ");
    }
}