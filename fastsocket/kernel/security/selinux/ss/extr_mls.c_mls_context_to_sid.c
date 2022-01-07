
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct sidtab {int dummy; } ;
struct TYPE_8__ {int table; } ;
struct TYPE_6__ {int table; } ;
struct policydb {TYPE_3__ p_cats; TYPE_1__ p_levels; } ;
struct level_datum {TYPE_2__* level; } ;
struct TYPE_10__ {TYPE_4__* level; } ;
struct context {TYPE_5__ range; } ;
struct cat_datum {int value; } ;
struct TYPE_9__ {int cat; int sens; } ;
struct TYPE_7__ {int sens; } ;


 int EINVAL ;
 scalar_t__ SECSID_NULL ;
 int ebitmap_cpy (int *,int *) ;
 int ebitmap_set_bit (int *,int,int) ;
 void* hashtab_search (int ,char*) ;
 int mls_context_cpy (struct context*,struct context*) ;
 int selinux_mls_enabled ;
 struct context* sidtab_search (struct sidtab*,scalar_t__) ;
 char* strchr (char*,char) ;
 scalar_t__ strlen (char*) ;

int mls_context_to_sid(struct policydb *pol,
         char oldc,
         char **scontext,
         struct context *context,
         struct sidtab *s,
         u32 def_sid)
{

 char delim;
 char *scontextp, *p, *rngptr;
 struct level_datum *levdatum;
 struct cat_datum *catdatum, *rngdatum;
 int l, rc = -EINVAL;

 if (!selinux_mls_enabled) {
  if (def_sid != SECSID_NULL && oldc)
   *scontext += strlen(*scontext)+1;
  return 0;
 }





 if (!oldc) {
  struct context *defcon;

  if (def_sid == SECSID_NULL)
   goto out;

  defcon = sidtab_search(s, def_sid);
  if (!defcon)
   goto out;

  rc = mls_context_cpy(context, defcon);
  goto out;
 }


 scontextp = p = *scontext;
 while (*p && *p != ':' && *p != '-')
  p++;

 delim = *p;
 if (delim != '\0')
  *p++ = '\0';

 for (l = 0; l < 2; l++) {
  levdatum = hashtab_search(pol->p_levels.table, scontextp);
  if (!levdatum) {
   rc = -EINVAL;
   goto out;
  }

  context->range.level[l].sens = levdatum->level->sens;

  if (delim == ':') {

   while (1) {
    scontextp = p;
    while (*p && *p != ',' && *p != '-')
     p++;
    delim = *p;
    if (delim != '\0')
     *p++ = '\0';


    rngptr = strchr(scontextp, '.');
    if (rngptr != ((void*)0)) {

     *rngptr++ = '\0';
    }

    catdatum = hashtab_search(pol->p_cats.table,
         scontextp);
    if (!catdatum) {
     rc = -EINVAL;
     goto out;
    }

    rc = ebitmap_set_bit(&context->range.level[l].cat,
           catdatum->value - 1, 1);
    if (rc)
     goto out;


    if (rngptr) {
     int i;

     rngdatum = hashtab_search(pol->p_cats.table, rngptr);
     if (!rngdatum) {
      rc = -EINVAL;
      goto out;
     }

     if (catdatum->value >= rngdatum->value) {
      rc = -EINVAL;
      goto out;
     }

     for (i = catdatum->value; i < rngdatum->value; i++) {
      rc = ebitmap_set_bit(&context->range.level[l].cat, i, 1);
      if (rc)
       goto out;
     }
    }

    if (delim != ',')
     break;
   }
  }
  if (delim == '-') {

   scontextp = p;
   while (*p && *p != ':')
    p++;

   delim = *p;
   if (delim != '\0')
    *p++ = '\0';
  } else
   break;
 }

 if (l == 0) {
  context->range.level[1].sens = context->range.level[0].sens;
  rc = ebitmap_cpy(&context->range.level[1].cat,
     &context->range.level[0].cat);
  if (rc)
   goto out;
 }
 *scontext = ++p;
 rc = 0;
out:
 return rc;
}
