
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_25__ TYPE_3__ ;
typedef struct TYPE_24__ TYPE_1__ ;


struct hash_control {int dummy; } ;
struct TYPE_24__ {scalar_t__ len; char* ptr; } ;
typedef TYPE_1__ sb ;
struct TYPE_25__ {int index; TYPE_1__ name; TYPE_1__ def; TYPE_1__ actual; int type; int * next; } ;
typedef TYPE_3__ formal_entry ;
typedef int bfd_boolean ;


 int FALSE ;
 int FORMAL_OPTIONAL ;
 int TRUE ;
 char const* _ (char*) ;
 int buffer_and_nest (int *,char*,TYPE_1__*,int (*) (TYPE_1__*)) ;
 int get_any_string (int,TYPE_1__*,TYPE_1__*) ;
 int get_token (int,TYPE_1__*,TYPE_1__*) ;
 int hash_die (struct hash_control*) ;
 char* hash_jam (struct hash_control*,int ,TYPE_3__*) ;
 struct hash_control* hash_new () ;
 char* macro_expand_body (TYPE_1__*,TYPE_1__*,TYPE_3__*,struct hash_control*,int ) ;
 int sb_add_char (TYPE_1__*,char) ;
 int sb_kill (TYPE_1__*) ;
 int sb_new (TYPE_1__*) ;
 int sb_reset (TYPE_1__*) ;
 int sb_skip_comma (int,TYPE_1__*) ;
 int sb_skip_white (int,TYPE_1__*) ;
 int sb_terminate (TYPE_1__*) ;

const char *
expand_irp (int irpc, int idx, sb *in, sb *out, int (*get_line) (sb *))
{
  sb sub;
  formal_entry f;
  struct hash_control *h;
  const char *err;

  idx = sb_skip_white (idx, in);

  sb_new (&sub);
  if (! buffer_and_nest (((void*)0), "ENDR", &sub, get_line))
    return _("unexpected end of file in irp or irpc");

  sb_new (&f.name);
  sb_new (&f.def);
  sb_new (&f.actual);

  idx = get_token (idx, in, &f.name);
  if (f.name.len == 0)
    return _("missing model parameter");

  h = hash_new ();
  err = hash_jam (h, sb_terminate (&f.name), &f);
  if (err != ((void*)0))
    return err;

  f.index = 1;
  f.next = ((void*)0);
  f.type = FORMAL_OPTIONAL;

  sb_reset (out);

  idx = sb_skip_comma (idx, in);
  if (idx >= in->len)
    {

      err = macro_expand_body (&sub, out, &f, h, 0);
    }
  else
    {
      bfd_boolean in_quotes = FALSE;

      if (irpc && in->ptr[idx] == '"')
 {
   in_quotes = TRUE;
   ++idx;
 }

      while (idx < in->len)
 {
   if (!irpc)
     idx = get_any_string (idx, in, &f.actual);
   else
     {
       if (in->ptr[idx] == '"')
  {
    int nxt;

    if (irpc)
      in_quotes = ! in_quotes;

    nxt = sb_skip_white (idx + 1, in);
    if (nxt >= in->len)
      {
        idx = nxt;
        break;
      }
  }
       sb_reset (&f.actual);
       sb_add_char (&f.actual, in->ptr[idx]);
       ++idx;
     }

   err = macro_expand_body (&sub, out, &f, h, 0);
   if (err != ((void*)0))
     break;
   if (!irpc)
     idx = sb_skip_comma (idx, in);
   else if (! in_quotes)
     idx = sb_skip_white (idx, in);
 }
    }

  hash_die (h);
  sb_kill (&f.actual);
  sb_kill (&f.def);
  sb_kill (&f.name);
  sb_kill (&sub);

  return err;
}
