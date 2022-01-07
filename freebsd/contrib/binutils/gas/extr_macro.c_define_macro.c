
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_2__ ;
typedef struct TYPE_20__ TYPE_1__ ;


struct TYPE_20__ {scalar_t__ len; char* ptr; } ;
typedef TYPE_1__ sb ;
struct TYPE_21__ {char* file; unsigned int line; char* name; TYPE_1__ sub; int formal_hash; scalar_t__ formals; scalar_t__ formal_count; } ;
typedef TYPE_2__ macro_entry ;
typedef int PTR ;


 char TOLOWER (char) ;
 char* _ (char*) ;
 int buffer_and_nest (char*,char*,TYPE_1__*,int (*) (TYPE_1__*)) ;
 int do_formals (TYPE_2__*,int,TYPE_1__*) ;
 int free_macro (TYPE_2__*) ;
 int get_token (int,TYPE_1__*,TYPE_1__*) ;
 scalar_t__ hash_find (int ,char*) ;
 char* hash_jam (int ,char*,int ) ;
 int hash_new () ;
 int macro_defined ;
 int macro_hash ;
 int sb_add_sb (TYPE_1__*,TYPE_1__*) ;
 int sb_new (TYPE_1__*) ;
 int sb_skip_comma (int,TYPE_1__*) ;
 int sb_skip_white (int,TYPE_1__*) ;
 void* sb_terminate (TYPE_1__*) ;
 scalar_t__ xmalloc (int) ;

const char *
define_macro (int idx, sb *in, sb *label,
       int (*get_line) (sb *),
       char *file, unsigned int line,
       const char **namep)
{
  macro_entry *macro;
  sb name;
  const char *error = ((void*)0);

  macro = (macro_entry *) xmalloc (sizeof (macro_entry));
  sb_new (&macro->sub);
  sb_new (&name);
  macro->file = file;
  macro->line = line;

  macro->formal_count = 0;
  macro->formals = 0;
  macro->formal_hash = hash_new ();

  idx = sb_skip_white (idx, in);
  if (! buffer_and_nest ("MACRO", "ENDM", &macro->sub, get_line))
    error = _("unexpected end of file in macro `%s' definition");
  if (label != ((void*)0) && label->len != 0)
    {
      sb_add_sb (&name, label);
      macro->name = sb_terminate (&name);
      if (idx < in->len && in->ptr[idx] == '(')
 {

   idx = do_formals (macro, idx + 1, in);
   if (idx < in->len && in->ptr[idx] == ')')
     idx = sb_skip_white (idx + 1, in);
   else if (!error)
     error = _("missing `)' after formals in macro definition `%s'");
 }
      else
 {

   idx = do_formals (macro, idx, in);
 }
    }
  else
    {
      int cidx;

      idx = get_token (idx, in, &name);
      macro->name = sb_terminate (&name);
      if (name.len == 0)
 error = _("Missing macro name");
      cidx = sb_skip_white (idx, in);
      idx = sb_skip_comma (cidx, in);
      if (idx == cidx || idx < in->len)
 idx = do_formals (macro, idx, in);
      else
 idx = cidx;
    }
  if (!error && idx < in->len)
    error = _("Bad parameter list for macro `%s'");


  for (idx = 0; idx < name.len; idx++)
    name.ptr[idx] = TOLOWER (name.ptr[idx]);
  if (hash_find (macro_hash, macro->name))
    error = _("Macro `%s' was already defined");
  if (!error)
    error = hash_jam (macro_hash, macro->name, (PTR) macro);

  if (namep != ((void*)0))
    *namep = macro->name;

  if (!error)
    macro_defined = 1;
  else
    free_macro (macro);

  return error;
}
