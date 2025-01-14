
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_28__ TYPE_3__ ;
typedef struct TYPE_27__ TYPE_2__ ;
typedef struct TYPE_26__ TYPE_1__ ;


struct hash_control {int dummy; } ;
struct TYPE_26__ {int len; char* ptr; } ;
typedef TYPE_1__ sb ;
struct TYPE_27__ {scalar_t__ line; int file; } ;
typedef TYPE_2__ macro_entry ;
struct TYPE_28__ {int index; TYPE_1__ name; struct TYPE_28__* next; TYPE_1__ actual; TYPE_1__ def; } ;
typedef TYPE_3__ formal_entry ;


 scalar_t__ ISALNUM (char) ;
 scalar_t__ ISDIGIT (char) ;
 scalar_t__ ISUPPER (int) ;
 int ISWHITE (char) ;
 scalar_t__ IS_ELF ;
 int LOCAL_INDEX ;
 char* _ (char*) ;
 int as_bad_where (int ,scalar_t__,char*,...) ;
 int del_formal (TYPE_3__*) ;
 int get_token (int,TYPE_1__*,TYPE_1__*) ;
 scalar_t__ hash_find (struct hash_control*,char const*) ;
 char* hash_jam (struct hash_control*,char const*,TYPE_3__*) ;
 scalar_t__ is_name_beginner (char) ;
 scalar_t__ macro_alternate ;
 scalar_t__ macro_mri ;
 int macro_number ;
 scalar_t__ macro_strip_at ;
 TYPE_3__* new_formal () ;
 int sb_add_char (TYPE_1__*,char) ;
 int sb_add_sb (TYPE_1__*,TYPE_1__*) ;
 int sb_add_string (TYPE_1__*,char*) ;
 int sb_kill (TYPE_1__*) ;
 int sb_new (TYPE_1__*) ;
 int sb_reset (TYPE_1__*) ;
 int sb_skip_comma (int,TYPE_1__*) ;
 int sb_skip_white (int,TYPE_1__*) ;
 char const* sb_terminate (TYPE_1__*) ;
 int sprintf (char*,char*,int) ;
 scalar_t__ strncasecmp (char*,char*,int) ;
 int sub_actual (int,TYPE_1__*,TYPE_1__*,struct hash_control*,char,TYPE_1__*,int) ;

__attribute__((used)) static const char *
macro_expand_body (sb *in, sb *out, formal_entry *formals,
     struct hash_control *formal_hash, const macro_entry *macro)
{
  sb t;
  int src = 0, inquote = 0, macro_line = 0;
  formal_entry *loclist = ((void*)0);
  const char *err = ((void*)0);

  sb_new (&t);

  while (src < in->len && !err)
    {
      if (in->ptr[src] == '&')
 {
   sb_reset (&t);
   if (macro_mri)
     {
       if (src + 1 < in->len && in->ptr[src + 1] == '&')
  src = sub_actual (src + 2, in, &t, formal_hash, '\'', out, 1);
       else
  sb_add_char (out, in->ptr[src++]);
     }
   else
     {



       src = sub_actual (src + 1, in, &t, formal_hash, '&', out, 0);
     }
 }
      else if (in->ptr[src] == '\\')
 {
   src++;
   if (src < in->len && in->ptr[src] == '(')
     {

       src++;
       while (src < in->len && in->ptr[src] != ')')
  {
    sb_add_char (out, in->ptr[src++]);
  }
       if (src < in->len)
  src++;
       else if (!macro)
  err = _("missing `)'");
       else
  as_bad_where (macro->file, macro->line + macro_line, _("missing `)'"));
     }
   else if (src < in->len && in->ptr[src] == '@')
     {


       char buffer[10];
       src++;
       sprintf (buffer, "%d", macro_number);
       sb_add_string (out, buffer);
     }
   else if (src < in->len && in->ptr[src] == '&')
     {


       sb_add_char (out, '\\');
       sb_add_char (out, '&');
       src++;
     }
   else if (macro_mri && src < in->len && ISALNUM (in->ptr[src]))
     {
       int ind;
       formal_entry *f;

       if (ISDIGIT (in->ptr[src]))
  ind = in->ptr[src] - '0';
       else if (ISUPPER (in->ptr[src]))
  ind = in->ptr[src] - 'A' + 10;
       else
  ind = in->ptr[src] - 'a' + 10;
       ++src;
       for (f = formals; f != ((void*)0); f = f->next)
  {
    if (f->index == ind - 1)
      {
        if (f->actual.len != 0)
   sb_add_sb (out, &f->actual);
        else
   sb_add_sb (out, &f->def);
        break;
      }
  }
     }
   else
     {
       sb_reset (&t);
       src = sub_actual (src, in, &t, formal_hash, '\'', out, 0);
     }
 }
      else if ((macro_alternate || macro_mri)
        && is_name_beginner (in->ptr[src])
        && (! inquote
     || ! macro_strip_at
     || (src > 0 && in->ptr[src - 1] == '@')))
 {
   if (! macro
       || src + 5 >= in->len
       || strncasecmp (in->ptr + src, "LOCAL", 5) != 0
       || ! ISWHITE (in->ptr[src + 5]))
     {
       sb_reset (&t);
       src = sub_actual (src, in, &t, formal_hash,
    (macro_strip_at && inquote) ? '@' : '\'',
    out, 1);
     }
   else
     {
       src = sb_skip_white (src + 5, in);
       while (in->ptr[src] != '\n')
  {
    const char *name;
    formal_entry *f = new_formal ();

    src = get_token (src, in, &f->name);
    name = sb_terminate (&f->name);
    if (! hash_find (formal_hash, name))
      {
        static int loccnt;
        char buf[20];

        f->index = LOCAL_INDEX;
        f->next = loclist;
        loclist = f;

        sprintf (buf, IS_ELF ? ".LL%04x" : "LL%04x", ++loccnt);
        sb_add_string (&f->actual, buf);

        err = hash_jam (formal_hash, name, f);
        if (err != ((void*)0))
   break;
      }
    else
      {
        as_bad_where (macro->file,
        macro->line + macro_line,
        _("`%s' was already used as parameter (or another local) name"),
        name);
        del_formal (f);
      }

    src = sb_skip_comma (src, in);
  }
     }
 }
      else if (in->ptr[src] == '"'
        || (macro_mri && in->ptr[src] == '\''))
 {
   inquote = !inquote;
   sb_add_char (out, in->ptr[src++]);
 }
      else if (in->ptr[src] == '@' && macro_strip_at)
 {
   ++src;
   if (src < in->len
       && in->ptr[src] == '@')
     {
       sb_add_char (out, '@');
       ++src;
     }
 }
      else if (macro_mri
        && in->ptr[src] == '='
        && src + 1 < in->len
        && in->ptr[src + 1] == '=')
 {
   formal_entry *ptr;

   sb_reset (&t);
   src = get_token (src + 2, in, &t);
   ptr = (formal_entry *) hash_find (formal_hash, sb_terminate (&t));
   if (ptr == ((void*)0))
     {
       sb_add_char (out, '=');
       sb_add_char (out, '=');
       sb_add_sb (out, &t);
     }
   else
     {
       if (ptr->actual.len)
  {
    sb_add_string (out, "-1");
  }
       else
  {
    sb_add_char (out, '0');
  }
     }
 }
      else
 {
   if (in->ptr[src] == '\n')
     ++macro_line;
   sb_add_char (out, in->ptr[src++]);
 }
    }

  sb_kill (&t);

  while (loclist != ((void*)0))
    {
      formal_entry *f;

      f = loclist->next;


      hash_jam (formal_hash, sb_terminate (&loclist->name), ((void*)0));
      del_formal (loclist);
      loclist = f;
    }

  return err;
}
