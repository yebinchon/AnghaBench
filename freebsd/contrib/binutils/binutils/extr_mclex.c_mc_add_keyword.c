
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int wind_language_t ;
typedef int unichar ;
typedef void* rc_uint_type ;
struct TYPE_4__ {size_t len; char const* group_name; int rid; struct TYPE_4__* next; int lang_info; int * sval; void* nval; int * usz; } ;
typedef TYPE_1__ mc_keyword ;


 int _ (char*) ;
 int fatal (char*,...) ;
 TYPE_1__* keyword_top ;
 int memcmp (int *,int *,size_t) ;
 int memcpy (int *,int const*,int) ;
 scalar_t__ strcmp (char const*,char const*) ;
 int * unichar_dup (int *) ;
 size_t unichar_len (int *) ;
 int * wind_find_language_by_id (unsigned int) ;
 TYPE_1__* xmalloc (int) ;

void
mc_add_keyword (unichar *usz, int rid, const char *grp, rc_uint_type nv, unichar *sv)
{
  mc_keyword *p, *c, *n;
  size_t len = unichar_len (usz);

  c = keyword_top;
  p = ((void*)0);
  while (c != ((void*)0))
    {
      if (c->len > len)
 break;
      if (c->len == len)
 {
   int e = memcmp (usz, c->usz, len * sizeof (unichar));

   if (e < 0)
     break;
   if (! e)
     {
       if (! strcmp (grp, "keyword") || strcmp (c->group_name, grp) != 0)
  fatal (_("Duplicate symbol entered into keyword list."));
       c->rid = rid;
       c->nval = nv;
       c->sval = (!sv ? ((void*)0) : unichar_dup (sv));
       if (! strcmp (grp, "language"))
  {
    const wind_language_t *lag = wind_find_language_by_id ((unsigned) nv);

    if (lag == ((void*)0))
      fatal ("Language ident 0x%lx is not resolvable.\n", (long) nv);
    memcpy (&c->lang_info, lag, sizeof (*lag));
  }
       return;
     }
 }
      c = (p = c)->next;
    }
  n = xmalloc (sizeof (mc_keyword));
  n->next = c;
  n->len = len;
  n->group_name = grp;
  n->usz = usz;
  n->rid = rid;
  n->nval = nv;
  n->sval = (!sv ? ((void*)0) : unichar_dup (sv));
  if (! strcmp (grp, "language"))
    {
      const wind_language_t *lag = wind_find_language_by_id ((unsigned) nv);
      if (lag == ((void*)0))
 fatal ("Language ident 0x%lx is not resolvable.\n", (long) nv);
      memcpy (&n->lang_info, lag, sizeof (*lag));
    }
  if (! p)
    keyword_top = n;
  else
    p->next = n;
}
