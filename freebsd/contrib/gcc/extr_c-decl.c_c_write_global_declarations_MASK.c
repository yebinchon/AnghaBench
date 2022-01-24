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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (scalar_t__) ; 
 int TDF_SLIM ; 
 int /*<<< orphan*/  TDI_tu ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  TV_SYMOUT ; 
 scalar_t__ all_translation_units ; 
 int /*<<< orphan*/  FUNC3 (char,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  current_scope ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__,int,int /*<<< orphan*/ *) ; 
 scalar_t__ errorcount ; 
 int /*<<< orphan*/ * ext_block ; 
 scalar_t__ external_scope ; 
 scalar_t__ flag_syntax_only ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int /*<<< orphan*/  parse_in ; 
 scalar_t__ pch_file ; 
 int /*<<< orphan*/ * FUNC12 () ; 
 scalar_t__ sorrycount ; 
 scalar_t__ static_ctors ; 
 scalar_t__ static_dtors ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 

void
FUNC15 (void)
{
  tree t;

  /* We don't want to do this if generating a PCH.  */
  if (pch_file)
    return;

  /* Don't waste time on further processing if -fsyntax-only or we've
     encountered errors.  */
  if (flag_syntax_only || errorcount || sorrycount || FUNC7 (parse_in))
    return;

  /* Close the external scope.  */
  ext_block = FUNC12 ();
  external_scope = 0;
  FUNC11 (!current_scope);

  if (ext_block)
    {
      tree tmp = FUNC0 (ext_block);
      int flags;
      FILE * stream = FUNC8 (TDI_tu, &flags);
      if (stream && tmp)
	{
	  FUNC10 (tmp, flags & ~TDF_SLIM, stream);
	  FUNC9 (TDI_tu, stream);
	}
    }

  /* Process all file scopes in this compilation, and the external_scope,
     through wrapup_global_declarations and check_global_declarations.  */
  for (t = all_translation_units; t; t = FUNC2 (t))
    FUNC4 (FUNC0 (FUNC1 (t)));
  FUNC4 (FUNC0 (ext_block));

  /* Generate functions to call static constructors and destructors
     for targets that do not support .ctors/.dtors sections.  These
     functions have magic names which are detected by collect2.  */
  FUNC3 ('I', static_ctors); static_ctors = 0;
  FUNC3 ('D', static_dtors); static_dtors = 0;

  /* We're done parsing; proceed to optimize and emit assembly.
     FIXME: shouldn't be the front end's responsibility to call this.  */
  FUNC6 ();

  /* After cgraph has had a chance to emit everything that's going to
     be emitted, output debug information for globals.  */
  if (errorcount == 0 && sorrycount == 0)
    {
      FUNC14 (TV_SYMOUT);
      for (t = all_translation_units; t; t = FUNC2 (t))
	FUNC5 (FUNC0 (FUNC1 (t)));
      FUNC5 (FUNC0 (ext_block));
      FUNC13 (TV_SYMOUT);
    }

  ext_block = NULL;
}