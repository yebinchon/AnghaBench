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
struct constraint_data {size_t namelen; char const* name; int lineno; char const* c_name; char const* regclass; int is_register; int is_const_int; int is_const_dbl; int is_extra; int is_memory; int is_address; struct constraint_data* next_textual; struct constraint_data* next_this_letter; scalar_t__ exp; } ;
typedef  scalar_t__ rtx ;
typedef  enum rtx_code { ____Placeholder_rtx_code } rtx_code ;

/* Variables and functions */
 scalar_t__ AND ; 
 int CONST_DOUBLE ; 
 int CONST_INT ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 char const* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char const) ; 
 int /*<<< orphan*/  FUNC3 (char const) ; 
 scalar_t__ MATCH_CODE ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,size_t) ; 
 scalar_t__ FUNC5 (scalar_t__,int /*<<< orphan*/ ) ; 
 char const* FUNC6 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  const_dbl_constraints ; 
 int /*<<< orphan*/  const_int_constraints ; 
 int /*<<< orphan*/  constraint_max_namelen ; 
 struct constraint_data** constraints_by_letter_table ; 
 int /*<<< orphan*/  generic_constraint_letters ; 
 int have_address_constraints ; 
 int have_const_dbl_constraints ; 
 int have_const_int_constraints ; 
 int have_error ; 
 int have_extra_constraints ; 
 int have_memory_constraints ; 
 int have_register_constraints ; 
 struct constraint_data** last_constraint_ptr ; 
 char const* FUNC7 (char const*) ; 
 int /*<<< orphan*/  FUNC8 (int,char*,...) ; 
 struct constraint_data* FUNC9 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  rtl_obstack ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,char const) ; 
 scalar_t__ FUNC11 (char const*,char const*) ; 
 size_t FUNC12 (char const*) ; 
 int /*<<< orphan*/  FUNC13 (char const*,char const*,size_t) ; 
 scalar_t__ FUNC14 (scalar_t__,char const*,int) ; 

__attribute__((used)) static void
FUNC15 (const char *name, const char *regclass,
		rtx exp, bool is_memory, bool is_address,
		int lineno)
{
  struct constraint_data *c, **iter, **slot;
  const char *p;
  bool need_mangled_name = false;
  bool is_const_int;
  bool is_const_dbl;
  size_t namelen;

  if (exp && FUNC14 (exp, name, lineno))
    return;

  if (!FUNC3 (name[0]) && name[0] != '_')
    {
      if (name[1] == '\0')
	FUNC8 (lineno, "constraint name '%s' is not "
			   "a letter or underscore", name);
      else
	FUNC8 (lineno, "constraint name '%s' does not begin "
			   "with a letter or underscore", name);
      have_error = 1;
      return;
    }
  for (p = name; *p; p++)
    if (!FUNC2 (*p))
      {
	if (*p == '<' || *p == '>' || *p == '_')
	  need_mangled_name = true;
	else
	  {
	    FUNC8 (lineno,
			       "constraint name '%s' must be composed of "
			       "letters, digits, underscores, and "
			       "angle brackets", name);
	    have_error = 1;
	    return;
	  }
      }

  if (FUNC10 (generic_constraint_letters, name[0]))
    {
      if (name[1] == '\0')
	FUNC8 (lineno, "constraint letter '%s' cannot be "
			   "redefined by the machine description", name);
      else
	FUNC8 (lineno, "constraint name '%s' cannot be defined by "
			   "the machine description, as it begins with '%c'",
			   name, name[0]);
      have_error = 1;
      return;
    }

  
  namelen = FUNC12 (name);
  slot = &constraints_by_letter_table[(unsigned int)name[0]];
  for (iter = slot; *iter; iter = &(*iter)->next_this_letter)
    {
      /* This causes slot to end up pointing to the
	 next_this_letter field of the last constraint with a name
	 of equal or greater length than the new constraint; hence
	 the new constraint will be inserted after all previous
	 constraints with names of the same length.  */
      if ((*iter)->namelen >= namelen)
	slot = iter;

      if (!FUNC11 ((*iter)->name, name))
	{
	  FUNC8 (lineno, "redefinition of constraint '%s'", name);
	  FUNC8 ((*iter)->lineno, "previous definition is here");
	  have_error = 1;
	  return;
	}
      else if (!FUNC13 ((*iter)->name, name, (*iter)->namelen))
	{
	  FUNC8 (lineno, "defining constraint '%s' here", name);
	  FUNC8 ((*iter)->lineno, "renders constraint '%s' "
			     "(defined here) a prefix", (*iter)->name);
	  have_error = 1;
	  return;
	}
      else if (!FUNC13 ((*iter)->name, name, namelen))
	{
	  FUNC8 (lineno, "constraint '%s' is a prefix", name);
	  FUNC8 ((*iter)->lineno, "of constraint '%s' "
			     "(defined here)", (*iter)->name);
	  have_error = 1;
	  return;
	}
    }

  is_const_int = FUNC10 (const_int_constraints, name[0]) != 0;
  is_const_dbl = FUNC10 (const_dbl_constraints, name[0]) != 0;

  if (is_const_int || is_const_dbl)
    {
      enum rtx_code appropriate_code
	= is_const_int ? CONST_INT : CONST_DOUBLE;

      /* Consider relaxing this requirement in the future.  */
      if (regclass
	  || FUNC0 (exp) != AND
	  || FUNC0 (FUNC5 (exp, 0)) != MATCH_CODE
	  || FUNC11 (FUNC6 (FUNC5 (exp, 0), 0),
		     FUNC1 (appropriate_code)))
	{
	  if (name[1] == '\0')
	    FUNC8 (lineno, "constraint letter '%c' is reserved "
			       "for %s constraints",
			       name[0], FUNC1 (appropriate_code));
	  else
	    FUNC8 (lineno, "constraint names beginning with '%c' "
			       "(%s) are reserved for %s constraints",
			       name[0], name, 
			       FUNC1 (appropriate_code));

	  have_error = 1;
	  return;
	}

      if (is_memory)
	{
	  if (name[1] == '\0')
	    FUNC8 (lineno, "constraint letter '%c' cannot be a "
			       "memory constraint", name[0]);
	  else
	    FUNC8 (lineno, "constraint name '%s' begins with '%c', "
			       "and therefore cannot be a memory constraint",
			       name, name[0]);

	  have_error = 1;
	  return;
	}
      else if (is_address)
	{
	  if (name[1] == '\0')
	    FUNC8 (lineno, "constraint letter '%c' cannot be a "
			       "memory constraint", name[0]);
	  else
	    FUNC8 (lineno, "constraint name '%s' begins with '%c', "
			       "and therefore cannot be a memory constraint",
			       name, name[0]);

	  have_error = 1;
	  return;
	}
    }

  
  c = FUNC9 (rtl_obstack, sizeof (struct constraint_data));
  c->name = name;
  c->c_name = need_mangled_name ? FUNC7 (name) : name;
  c->lineno = lineno;
  c->namelen = namelen;
  c->regclass = regclass;
  c->exp = exp;
  c->is_register = regclass != 0;
  c->is_const_int = is_const_int;
  c->is_const_dbl = is_const_dbl;
  c->is_extra = !(regclass || is_const_int || is_const_dbl);
  c->is_memory = is_memory;
  c->is_address = is_address;

  c->next_this_letter = *slot;
  *slot = c;

  /* Insert this constraint in the list of all constraints in textual
     order.  */
  c->next_textual = 0;
  *last_constraint_ptr = c;
  last_constraint_ptr = &c->next_textual;

  constraint_max_namelen = FUNC4 (constraint_max_namelen, FUNC12 (name));
  have_register_constraints |= c->is_register;
  have_const_int_constraints |= c->is_const_int;
  have_const_dbl_constraints |= c->is_const_dbl;
  have_extra_constraints |= c->is_extra;
  have_memory_constraints |= c->is_memory;
  have_address_constraints |= c->is_address;
}