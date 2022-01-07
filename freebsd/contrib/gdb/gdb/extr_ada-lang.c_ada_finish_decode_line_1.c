
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct symtabs_and_lines {int nelts; struct symtab_and_line* sals; } ;
struct symtab_and_line {scalar_t__ line; int symtab; int pc; int section; } ;
struct symtab {int filename; } ;
struct symbol {int dummy; } ;
struct minimal_symbol {int dummy; } ;
struct cleanup {int dummy; } ;
struct block {int dummy; } ;


 int BLOCKVECTOR (struct symtab*) ;
 struct block* BLOCKVECTOR_BLOCK (int ,int ) ;
 scalar_t__ FUNCTION_START_OFFSET ;
 scalar_t__ LOC_BLOCK ;
 int SKIP_PROLOGUE (int ) ;
 int STATIC_BLOCK ;
 int SYMBOL_BFD_SECTION (struct minimal_symbol*) ;
 scalar_t__ SYMBOL_CLASS (struct symbol*) ;
 scalar_t__ SYMBOL_LINE (struct symbol*) ;
 int SYMBOL_PRINT_NAME (struct symbol*) ;
 int SYMBOL_VALUE_ADDRESS (struct minimal_symbol*) ;
 int VAR_DOMAIN ;
 int ada_completer_word_break_characters ;
 struct minimal_symbol* ada_lookup_minimal_symbol (char*) ;
 int ada_lookup_symbol_list (char*,struct block*,int ,struct symbol***,struct block***) ;
 char* ada_mangle (char*) ;
 struct symtabs_and_lines all_sals_for_line (int ,int,char***) ;
 scalar_t__ alloca (int) ;
 int discard_cleanups (struct cleanup*) ;
 int error (char*,...) ;
 char* extended_canonical_line_spec (struct symtab_and_line,int ) ;
 struct symtab_and_line find_function_start_sal (struct symbol*,int) ;
 struct symtabs_and_lines find_sal_from_funcs_and_line (int ,int,struct symbol**,int) ;
 struct block* get_selected_block (int *) ;
 int have_full_symbols () ;
 int have_minimal_symbols () ;
 int have_partial_symbols () ;
 int init_sal (struct symtab_and_line*) ;
 scalar_t__ isdigit (char) ;
 struct cleanup* make_cleanup (int ,struct symtab_and_line*) ;
 int memcpy (char*,char*,int) ;
 int memset (struct symtab_and_line*,int ,int) ;
 int no_symtab_msg ;
 int null_cleanup ;
 int strchr (int ,char) ;
 int strtol (char*,char**,int) ;
 int symtab_for_sym (struct symbol*) ;
 char tolower (char) ;
 int user_select_syms (struct symbol**,struct block**,int,int) ;
 int xfree ;
 scalar_t__ xmalloc (int) ;

struct symtabs_and_lines
ada_finish_decode_line_1 (char **spec, struct symtab *file_table,
     int funfirstline, char ***canonical)
{
  struct symbol **symbols;
  struct block **blocks;
  struct block *block;
  int n_matches, i, line_num;
  struct symtabs_and_lines selected;
  struct cleanup *old_chain = make_cleanup (null_cleanup, ((void*)0));
  char *name;

  int len;
  char *lower_name;
  char *unquoted_name;

  if (file_table == ((void*)0))
    block = get_selected_block (((void*)0));
  else
    block = BLOCKVECTOR_BLOCK (BLOCKVECTOR (file_table), STATIC_BLOCK);

  if (canonical != ((void*)0))
    *canonical = (char **) ((void*)0);

  name = *spec;
  if (**spec == '*')
    *spec += 1;
  else
    {
      while (**spec != '\000' &&
      !strchr (ada_completer_word_break_characters, **spec))
 *spec += 1;
    }
  len = *spec - name;

  line_num = -1;
  if (file_table != ((void*)0) && (*spec)[0] == ':' && isdigit ((*spec)[1]))
    {
      line_num = strtol (*spec + 1, spec, 10);
      while (**spec == ' ' || **spec == '\t')
 *spec += 1;
    }

  if (name[0] == '*')
    {
      if (line_num == -1)
 error ("Wild-card function with no line number or file name.");

      return all_sals_for_line (file_table->filename, line_num, canonical);
    }

  if (name[0] == '\'')
    {
      name += 1;
      len -= 2;
    }

  if (name[0] == '<')
    {
      unquoted_name = (char *) alloca (len - 1);
      memcpy (unquoted_name, name + 1, len - 2);
      unquoted_name[len - 2] = '\000';
      lower_name = ((void*)0);
    }
  else
    {
      unquoted_name = (char *) alloca (len + 1);
      memcpy (unquoted_name, name, len);
      unquoted_name[len] = '\000';
      lower_name = (char *) alloca (len + 1);
      for (i = 0; i < len; i += 1)
 lower_name[i] = tolower (name[i]);
      lower_name[len] = '\000';
    }

  n_matches = 0;
  if (lower_name != ((void*)0))
    n_matches = ada_lookup_symbol_list (ada_mangle (lower_name), block,
     VAR_DOMAIN, &symbols, &blocks);
  if (n_matches == 0)
    n_matches = ada_lookup_symbol_list (unquoted_name, block,
     VAR_DOMAIN, &symbols, &blocks);
  if (n_matches == 0 && line_num >= 0)
    error ("No line number information found for %s.", unquoted_name);
  else if (n_matches == 0)
    {






      struct symtab_and_line val;

      struct minimal_symbol *msymbol;

      init_sal (&val);

      msymbol = ((void*)0);
      if (lower_name != ((void*)0))
 msymbol = ada_lookup_minimal_symbol (ada_mangle (lower_name));
      if (msymbol == ((void*)0))
 msymbol = ada_lookup_minimal_symbol (unquoted_name);
      if (msymbol != ((void*)0))
 {
   val.pc = SYMBOL_VALUE_ADDRESS (msymbol);
   val.section = SYMBOL_BFD_SECTION (msymbol);
   if (funfirstline)
     {
       val.pc += FUNCTION_START_OFFSET;
       SKIP_PROLOGUE (val.pc);
     }
   selected.sals = (struct symtab_and_line *)
     xmalloc (sizeof (struct symtab_and_line));
   selected.sals[0] = val;
   selected.nelts = 1;
   return selected;
 }

      if (!have_full_symbols () &&
   !have_partial_symbols () && !have_minimal_symbols ())
 error (no_symtab_msg);

      error ("Function \"%s\" not defined.", unquoted_name);
      return selected;
    }

  if (line_num >= 0)
    {
      return
 find_sal_from_funcs_and_line (file_table->filename, line_num,
          symbols, n_matches);
    }
  else
    {
      selected.nelts =
 user_select_syms (symbols, blocks, n_matches, n_matches);
    }

  selected.sals = (struct symtab_and_line *)
    xmalloc (sizeof (struct symtab_and_line) * selected.nelts);
  memset (selected.sals, 0, selected.nelts * sizeof (selected.sals[i]));
  make_cleanup (xfree, selected.sals);

  i = 0;
  while (i < selected.nelts)
    {
      if (SYMBOL_CLASS (symbols[i]) == LOC_BLOCK)
 selected.sals[i] = find_function_start_sal (symbols[i], funfirstline);
      else if (SYMBOL_LINE (symbols[i]) != 0)
 {
   selected.sals[i].symtab = symtab_for_sym (symbols[i]);
   selected.sals[i].line = SYMBOL_LINE (symbols[i]);
 }
      else if (line_num >= 0)
 {

   symbols[i] = symbols[selected.nelts - 1];
   blocks[i] = blocks[selected.nelts - 1];
   selected.nelts -= 1;
   continue;
 }
      else
 error ("Line number not known for symbol \"%s\"", unquoted_name);
      i += 1;
    }

  if (canonical != ((void*)0) && (line_num >= 0 || n_matches > 1))
    {
      *canonical = (char **) xmalloc (sizeof (char *) * selected.nelts);
      for (i = 0; i < selected.nelts; i += 1)
 (*canonical)[i] =
   extended_canonical_line_spec (selected.sals[i],
     SYMBOL_PRINT_NAME (symbols[i]));
    }

  discard_cleanups (old_chain);
  return selected;
}
