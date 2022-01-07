
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


struct TYPE_17__ {int len; char* ptr; } ;
typedef TYPE_1__ sb ;
struct TYPE_18__ {int formal_hash; int name; int line; int file; scalar_t__ formal_count; TYPE_3__* formals; } ;
typedef TYPE_2__ macro_entry ;
struct TYPE_19__ {scalar_t__ type; scalar_t__ index; TYPE_1__ name; struct TYPE_19__* next; int def; } ;
typedef TYPE_3__ formal_entry ;


 scalar_t__ FORMAL_REQUIRED ;
 scalar_t__ FORMAL_VARARG ;
 scalar_t__ NARG_INDEX ;
 int _ (char*) ;
 int as_bad_where (int ,int ,int ,char const*,char const*,...) ;
 int as_warn_where (int ,int ,int ,char const*,int ) ;
 int get_any_string (int,TYPE_1__*,int *) ;
 int get_token (int,TYPE_1__*,TYPE_1__*) ;
 scalar_t__ hash_find (int ,char const*) ;
 int hash_jam (int ,char const*,TYPE_3__*) ;
 int is_name_beginner (char) ;
 int is_part_of_name (char) ;
 scalar_t__ macro_mri ;
 scalar_t__ macro_strip_at ;
 TYPE_3__* new_formal () ;
 int sb_add_string (TYPE_1__*,char const*) ;
 int sb_kill (TYPE_1__*) ;
 int sb_new (TYPE_1__*) ;
 int sb_reset (int *) ;
 int sb_skip_comma (int,TYPE_1__*) ;
 int sb_skip_white (int,TYPE_1__*) ;
 char* sb_terminate (TYPE_1__*) ;
 scalar_t__ strcmp (char*,char*) ;

__attribute__((used)) static int
do_formals (macro_entry *macro, int idx, sb *in)
{
  formal_entry **p = &macro->formals;
  const char *name;

  idx = sb_skip_white (idx, in);
  while (idx < in->len)
    {
      formal_entry *formal = new_formal ();
      int cidx;

      idx = get_token (idx, in, &formal->name);
      if (formal->name.len == 0)
 {
   if (macro->formal_count)
     --idx;
   break;
 }
      idx = sb_skip_white (idx, in);

      name = sb_terminate (&formal->name);
      if (! macro_mri
   && idx < in->len
   && in->ptr[idx] == ':'
   && (! is_name_beginner (':')
       || idx + 1 >= in->len
       || ! is_part_of_name (in->ptr[idx + 1])))
 {

   sb qual;

   sb_new (&qual);
   idx = get_token (sb_skip_white (idx + 1, in), in, &qual);
   sb_terminate (&qual);
   if (qual.len == 0)
     as_bad_where (macro->file,
     macro->line,
     _("Missing parameter qualifier for `%s' in macro `%s'"),
     name,
     macro->name);
   else if (strcmp (qual.ptr, "req") == 0)
     formal->type = FORMAL_REQUIRED;
   else if (strcmp (qual.ptr, "vararg") == 0)
     formal->type = FORMAL_VARARG;
   else
     as_bad_where (macro->file,
     macro->line,
     _("`%s' is not a valid parameter qualifier for `%s' in macro `%s'"),
     qual.ptr,
     name,
     macro->name);
   sb_kill (&qual);
   idx = sb_skip_white (idx, in);
 }
      if (idx < in->len && in->ptr[idx] == '=')
 {

   idx = get_any_string (idx + 1, in, &formal->def);
   idx = sb_skip_white (idx, in);
   if (formal->type == FORMAL_REQUIRED)
     {
       sb_reset (&formal->def);
       as_warn_where (macro->file,
       macro->line,
       _("Pointless default value for required parameter `%s' in macro `%s'"),
       name,
       macro->name);
     }
 }


      if (! hash_find (macro->formal_hash, name))
 hash_jam (macro->formal_hash, name, formal);
      else
 as_bad_where (macro->file,
        macro->line,
        _("A parameter named `%s' already exists for macro `%s'"),
        name,
        macro->name);

      formal->index = macro->formal_count++;
      *p = formal;
      p = &formal->next;
      if (formal->type == FORMAL_VARARG)
 break;
      cidx = idx;
      idx = sb_skip_comma (idx, in);
      if (idx != cidx && idx >= in->len)
 {
   idx = cidx;
   break;
 }
    }

  if (macro_mri)
    {
      formal_entry *formal = new_formal ();





      if (macro_strip_at)
 name = "$NARG";
      else
 name = "NARG";

      sb_add_string (&formal->name, name);


      if (hash_find (macro->formal_hash, name))
 as_bad_where (macro->file,
        macro->line,
        _("Reserved word `%s' used as parameter in macro `%s'"),
        name,
        macro->name);
      hash_jam (macro->formal_hash, name, formal);

      formal->index = NARG_INDEX;
      *p = formal;
    }

  return idx;
}
