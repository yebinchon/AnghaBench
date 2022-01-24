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
struct symtabs_and_lines {int nelts; struct symtab_and_line* sals; } ;
struct symtab_and_line {scalar_t__ line; int /*<<< orphan*/  symtab; int /*<<< orphan*/  pc; int /*<<< orphan*/  section; } ;
struct symtab {int /*<<< orphan*/  filename; } ;
struct symbol {int dummy; } ;
struct minimal_symbol {int dummy; } ;
struct cleanup {int dummy; } ;
struct block {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct symtab*) ; 
 struct block* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNCTION_START_OFFSET ; 
 scalar_t__ LOC_BLOCK ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  STATIC_BLOCK ; 
 int /*<<< orphan*/  FUNC3 (struct minimal_symbol*) ; 
 scalar_t__ FUNC4 (struct symbol*) ; 
 scalar_t__ FUNC5 (struct symbol*) ; 
 int /*<<< orphan*/  FUNC6 (struct symbol*) ; 
 int /*<<< orphan*/  FUNC7 (struct minimal_symbol*) ; 
 int /*<<< orphan*/  VAR_DOMAIN ; 
 int /*<<< orphan*/  ada_completer_word_break_characters ; 
 struct minimal_symbol* FUNC8 (char*) ; 
 int FUNC9 (char*,struct block*,int /*<<< orphan*/ ,struct symbol***,struct block***) ; 
 char* FUNC10 (char*) ; 
 struct symtabs_and_lines FUNC11 (int /*<<< orphan*/ ,int,char***) ; 
 scalar_t__ FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 (struct cleanup*) ; 
 int /*<<< orphan*/  FUNC14 (char*,...) ; 
 char* FUNC15 (struct symtab_and_line,int /*<<< orphan*/ ) ; 
 struct symtab_and_line FUNC16 (struct symbol*,int) ; 
 struct symtabs_and_lines FUNC17 (int /*<<< orphan*/ ,int,struct symbol**,int) ; 
 struct block* FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 () ; 
 int /*<<< orphan*/  FUNC20 () ; 
 int /*<<< orphan*/  FUNC21 () ; 
 int /*<<< orphan*/  FUNC22 (struct symtab_and_line*) ; 
 scalar_t__ FUNC23 (char) ; 
 struct cleanup* FUNC24 (int /*<<< orphan*/ ,struct symtab_and_line*) ; 
 int /*<<< orphan*/  FUNC25 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC26 (struct symtab_and_line*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  no_symtab_msg ; 
 int /*<<< orphan*/  null_cleanup ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ ,char) ; 
 int FUNC28 (char*,char**,int) ; 
 int /*<<< orphan*/  FUNC29 (struct symbol*) ; 
 char FUNC30 (char) ; 
 int FUNC31 (struct symbol**,struct block**,int,int) ; 
 int /*<<< orphan*/  xfree ; 
 scalar_t__ FUNC32 (int) ; 

struct symtabs_and_lines
FUNC33 (char **spec, struct symtab *file_table,
			  int funfirstline, char ***canonical)
{
  struct symbol **symbols;
  struct block **blocks;
  struct block *block;
  int n_matches, i, line_num;
  struct symtabs_and_lines selected;
  struct cleanup *old_chain = FUNC24 (null_cleanup, NULL);
  char *name;

  int len;
  char *lower_name;
  char *unquoted_name;

  if (file_table == NULL)
    block = FUNC18 (NULL);
  else
    block = FUNC1 (FUNC0 (file_table), STATIC_BLOCK);

  if (canonical != NULL)
    *canonical = (char **) NULL;

  name = *spec;
  if (**spec == '*')
    *spec += 1;
  else
    {
      while (**spec != '\000' &&
	     !FUNC27 (ada_completer_word_break_characters, **spec))
	*spec += 1;
    }
  len = *spec - name;

  line_num = -1;
  if (file_table != NULL && (*spec)[0] == ':' && FUNC23 ((*spec)[1]))
    {
      line_num = FUNC28 (*spec + 1, spec, 10);
      while (**spec == ' ' || **spec == '\t')
	*spec += 1;
    }

  if (name[0] == '*')
    {
      if (line_num == -1)
	FUNC14 ("Wild-card function with no line number or file name.");

      return FUNC11 (file_table->filename, line_num, canonical);
    }

  if (name[0] == '\'')
    {
      name += 1;
      len -= 2;
    }

  if (name[0] == '<')
    {
      unquoted_name = (char *) FUNC12 (len - 1);
      FUNC25 (unquoted_name, name + 1, len - 2);
      unquoted_name[len - 2] = '\000';
      lower_name = NULL;
    }
  else
    {
      unquoted_name = (char *) FUNC12 (len + 1);
      FUNC25 (unquoted_name, name, len);
      unquoted_name[len] = '\000';
      lower_name = (char *) FUNC12 (len + 1);
      for (i = 0; i < len; i += 1)
	lower_name[i] = FUNC30 (name[i]);
      lower_name[len] = '\000';
    }

  n_matches = 0;
  if (lower_name != NULL)
    n_matches = FUNC9 (FUNC10 (lower_name), block,
					VAR_DOMAIN, &symbols, &blocks);
  if (n_matches == 0)
    n_matches = FUNC9 (unquoted_name, block,
					VAR_DOMAIN, &symbols, &blocks);
  if (n_matches == 0 && line_num >= 0)
    FUNC14 ("No line number information found for %s.", unquoted_name);
  else if (n_matches == 0)
    {
#ifdef HPPA_COMPILER_BUG
      /* FIXME: See comment in symtab.c::decode_line_1 */
#undef volatile
      volatile struct symtab_and_line val;
#define volatile		/*nothing */
#else
      struct symtab_and_line val;
#endif
      struct minimal_symbol *msymbol;

      FUNC22 (&val);

      msymbol = NULL;
      if (lower_name != NULL)
	msymbol = FUNC8 (FUNC10 (lower_name));
      if (msymbol == NULL)
	msymbol = FUNC8 (unquoted_name);
      if (msymbol != NULL)
	{
	  val.pc = FUNC7 (msymbol);
	  val.section = FUNC3 (msymbol);
	  if (funfirstline)
	    {
	      val.pc += FUNCTION_START_OFFSET;
	      FUNC2 (val.pc);
	    }
	  selected.sals = (struct symtab_and_line *)
	    FUNC32 (sizeof (struct symtab_and_line));
	  selected.sals[0] = val;
	  selected.nelts = 1;
	  return selected;
	}

      if (!FUNC19 () &&
	  !FUNC21 () && !FUNC20 ())
	FUNC14 (no_symtab_msg);

      FUNC14 ("Function \"%s\" not defined.", unquoted_name);
      return selected;		/* for lint */
    }

  if (line_num >= 0)
    {
      return
	FUNC17 (file_table->filename, line_num,
				      symbols, n_matches);
    }
  else
    {
      selected.nelts =
	FUNC31 (symbols, blocks, n_matches, n_matches);
    }

  selected.sals = (struct symtab_and_line *)
    FUNC32 (sizeof (struct symtab_and_line) * selected.nelts);
  FUNC26 (selected.sals, 0, selected.nelts * sizeof (selected.sals[i]));
  FUNC24 (xfree, selected.sals);

  i = 0;
  while (i < selected.nelts)
    {
      if (FUNC4 (symbols[i]) == LOC_BLOCK)
	selected.sals[i] = FUNC16 (symbols[i], funfirstline);
      else if (FUNC5 (symbols[i]) != 0)
	{
	  selected.sals[i].symtab = FUNC29 (symbols[i]);
	  selected.sals[i].line = FUNC5 (symbols[i]);
	}
      else if (line_num >= 0)
	{
	  /* Ignore this choice */
	  symbols[i] = symbols[selected.nelts - 1];
	  blocks[i] = blocks[selected.nelts - 1];
	  selected.nelts -= 1;
	  continue;
	}
      else
	FUNC14 ("Line number not known for symbol \"%s\"", unquoted_name);
      i += 1;
    }

  if (canonical != NULL && (line_num >= 0 || n_matches > 1))
    {
      *canonical = (char **) FUNC32 (sizeof (char *) * selected.nelts);
      for (i = 0; i < selected.nelts; i += 1)
	(*canonical)[i] =
	  FUNC15 (selected.sals[i],
					FUNC6 (symbols[i]));
    }

  FUNC13 (old_chain);
  return selected;
}