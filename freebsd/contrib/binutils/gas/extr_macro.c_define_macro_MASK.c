#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_2__ ;
typedef  struct TYPE_20__   TYPE_1__ ;

/* Type definitions */
struct TYPE_20__ {scalar_t__ len; char* ptr; } ;
typedef  TYPE_1__ sb ;
struct TYPE_21__ {char* file; unsigned int line; char* name; TYPE_1__ sub; int /*<<< orphan*/  formal_hash; scalar_t__ formals; scalar_t__ formal_count; } ;
typedef  TYPE_2__ macro_entry ;
typedef  int /*<<< orphan*/  PTR ;

/* Variables and functions */
 char FUNC0 (char) ; 
 char* FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,TYPE_1__*,int (*) (TYPE_1__*)) ; 
 int FUNC3 (TYPE_2__*,int,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int FUNC5 (int,TYPE_1__*,TYPE_1__*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,char*) ; 
 char* FUNC7 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int macro_defined ; 
 int /*<<< orphan*/  macro_hash ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 
 int FUNC11 (int,TYPE_1__*) ; 
 int FUNC12 (int,TYPE_1__*) ; 
 void* FUNC13 (TYPE_1__*) ; 
 scalar_t__ FUNC14 (int) ; 

const char *
FUNC15 (int idx, sb *in, sb *label,
	      int (*get_line) (sb *),
	      char *file, unsigned int line,
	      const char **namep)
{
  macro_entry *macro;
  sb name;
  const char *error = NULL;

  macro = (macro_entry *) FUNC14 (sizeof (macro_entry));
  FUNC10 (&macro->sub);
  FUNC10 (&name);
  macro->file = file;
  macro->line = line;

  macro->formal_count = 0;
  macro->formals = 0;
  macro->formal_hash = FUNC8 ();

  idx = FUNC12 (idx, in);
  if (! FUNC2 ("MACRO", "ENDM", &macro->sub, get_line))
    error = FUNC1("unexpected end of file in macro `%s' definition");
  if (label != NULL && label->len != 0)
    {
      FUNC9 (&name, label);
      macro->name = FUNC13 (&name);
      if (idx < in->len && in->ptr[idx] == '(')
	{
	  /* It's the label: MACRO (formals,...)  sort  */
	  idx = FUNC3 (macro, idx + 1, in);
	  if (idx < in->len && in->ptr[idx] == ')')
	    idx = FUNC12 (idx + 1, in);
	  else if (!error)
	    error = FUNC1("missing `)' after formals in macro definition `%s'");
	}
      else
	{
	  /* It's the label: MACRO formals,...  sort  */
	  idx = FUNC3 (macro, idx, in);
	}
    }
  else
    {
      int cidx;

      idx = FUNC5 (idx, in, &name);
      macro->name = FUNC13 (&name);
      if (name.len == 0)
	error = FUNC1("Missing macro name");
      cidx = FUNC12 (idx, in);
      idx = FUNC11 (cidx, in);
      if (idx == cidx || idx < in->len)
	idx = FUNC3 (macro, idx, in);
      else
	idx = cidx;
    }
  if (!error && idx < in->len)
    error = FUNC1("Bad parameter list for macro `%s'");

  /* And stick it in the macro hash table.  */
  for (idx = 0; idx < name.len; idx++)
    name.ptr[idx] = FUNC0 (name.ptr[idx]);
  if (FUNC6 (macro_hash, macro->name))
    error = FUNC1("Macro `%s' was already defined");
  if (!error)
    error = FUNC7 (macro_hash, macro->name, (PTR) macro);

  if (namep != NULL)
    *namep = macro->name;

  if (!error)
    macro_defined = 1;
  else
    FUNC4 (macro);

  return error;
}