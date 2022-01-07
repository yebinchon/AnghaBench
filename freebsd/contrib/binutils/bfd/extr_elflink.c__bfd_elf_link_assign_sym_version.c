
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_14__ {struct bfd_elf_version_tree* vertree; } ;
struct TYPE_12__ {char* string; } ;
struct TYPE_10__ {scalar_t__ link; } ;
struct TYPE_11__ {TYPE_1__ i; } ;
struct TYPE_13__ {scalar_t__ type; TYPE_3__ root; TYPE_2__ u; } ;
struct elf_link_hash_entry {int hidden; int dynindx; TYPE_5__ verinfo; TYPE_4__ root; int def_regular; } ;
struct elf_info_failed {void* failed; struct bfd_link_info* info; } ;
struct elf_backend_data {int (* elf_backend_hide_symbol ) (struct bfd_link_info*,struct elf_link_hash_entry*,void*) ;} ;
struct elf_assign_sym_version_info {struct bfd_elf_version_tree* verdefs; void* failed; int output_bfd; struct bfd_link_info* info; } ;
struct bfd_link_info {int export_dynamic; scalar_t__ executable; } ;
struct TYPE_15__ {int * list; } ;
struct bfd_elf_version_tree {char* name; unsigned int name_indx; scalar_t__ vernum; TYPE_6__ locals; struct bfd_elf_version_expr* (* match ) (TYPE_6__*,struct bfd_elf_version_expr*,char*) ;TYPE_6__ globals; struct bfd_elf_version_tree* next; void* used; } ;
struct bfd_elf_version_expr {int script; char* pattern; scalar_t__ symver; } ;
typedef int bfd_size_type ;
typedef void* bfd_boolean ;


 char ELF_VER_CHR ;
 void* FALSE ;
 void* TRUE ;
 int _ (char*) ;
 int _bfd_elf_fix_symbol_flags (struct elf_link_hash_entry*,struct elf_info_failed*) ;
 int _bfd_error_handler (int ,int ,char*) ;
 int bfd_error_bad_value ;
 scalar_t__ bfd_link_hash_warning ;
 char* bfd_malloc (size_t) ;
 int bfd_set_error (int ) ;
 struct bfd_elf_version_tree* bfd_zalloc (int ,int) ;
 int free (char*) ;
 struct elf_backend_data* get_elf_backend_data (int ) ;
 int memcpy (char*,char*,size_t) ;
 char* strchr (char*,char) ;
 scalar_t__ strcmp (char*,char*) ;
 struct bfd_elf_version_expr* stub1 (TYPE_6__*,struct bfd_elf_version_expr*,char*) ;
 struct bfd_elf_version_expr* stub2 (TYPE_6__*,struct bfd_elf_version_expr*,char*) ;
 int stub3 (struct bfd_link_info*,struct elf_link_hash_entry*,void*) ;
 int stub4 (int ,int ,char*) ;
 struct bfd_elf_version_expr* stub5 (TYPE_6__*,struct bfd_elf_version_expr*,char*) ;
 int stub6 (struct bfd_link_info*,struct elf_link_hash_entry*,void*) ;
 struct bfd_elf_version_expr* stub7 (TYPE_6__*,struct bfd_elf_version_expr*,char*) ;
 int stub8 (struct bfd_link_info*,struct elf_link_hash_entry*,void*) ;

bfd_boolean
_bfd_elf_link_assign_sym_version (struct elf_link_hash_entry *h, void *data)
{
  struct elf_assign_sym_version_info *sinfo;
  struct bfd_link_info *info;
  const struct elf_backend_data *bed;
  struct elf_info_failed eif;
  char *p;
  bfd_size_type amt;

  sinfo = data;
  info = sinfo->info;

  if (h->root.type == bfd_link_hash_warning)
    h = (struct elf_link_hash_entry *) h->root.u.i.link;


  eif.failed = FALSE;
  eif.info = info;
  if (! _bfd_elf_fix_symbol_flags (h, &eif))
    {
      if (eif.failed)
 sinfo->failed = TRUE;
      return FALSE;
    }



  if (!h->def_regular)
    return TRUE;

  bed = get_elf_backend_data (sinfo->output_bfd);
  p = strchr (h->root.root.string, ELF_VER_CHR);
  if (p != ((void*)0) && h->verinfo.vertree == ((void*)0))
    {
      struct bfd_elf_version_tree *t;
      bfd_boolean hidden;

      hidden = TRUE;



      ++p;
      if (*p == ELF_VER_CHR)
 {
   hidden = FALSE;
   ++p;
 }


      if (*p == '\0')
 {
   if (hidden)
     h->hidden = 1;
   return TRUE;
 }


      for (t = sinfo->verdefs; t != ((void*)0); t = t->next)
 {
   if (strcmp (t->name, p) == 0)
     {
       size_t len;
       char *alc;
       struct bfd_elf_version_expr *d;

       len = p - h->root.root.string;
       alc = bfd_malloc (len);
       if (alc == ((void*)0))
  return FALSE;
       memcpy (alc, h->root.root.string, len - 1);
       alc[len - 1] = '\0';
       if (alc[len - 2] == ELF_VER_CHR)
  alc[len - 2] = '\0';

       h->verinfo.vertree = t;
       t->used = TRUE;
       d = ((void*)0);

       if (t->globals.list != ((void*)0))
  d = (*t->match) (&t->globals, ((void*)0), alc);



       if (d == ((void*)0) && t->locals.list != ((void*)0))
  {
    d = (*t->match) (&t->locals, ((void*)0), alc);
    if (d != ((void*)0)
        && h->dynindx != -1
        && ! info->export_dynamic)
      (*bed->elf_backend_hide_symbol) (info, h, TRUE);
  }

       free (alc);
       break;
     }
 }



      if (t == ((void*)0) && info->executable)
 {
   struct bfd_elf_version_tree **pp;
   int version_index;



   if (h->dynindx == -1)
     return TRUE;

   amt = sizeof *t;
   t = bfd_zalloc (sinfo->output_bfd, amt);
   if (t == ((void*)0))
     {
       sinfo->failed = TRUE;
       return FALSE;
     }

   t->name = p;
   t->name_indx = (unsigned int) -1;
   t->used = TRUE;

   version_index = 1;

   if (sinfo->verdefs != ((void*)0) && sinfo->verdefs->vernum == 0)
     version_index = 0;
   for (pp = &sinfo->verdefs; *pp != ((void*)0); pp = &(*pp)->next)
     ++version_index;
   t->vernum = version_index;

   *pp = t;

   h->verinfo.vertree = t;
 }
      else if (t == ((void*)0))
 {


   (*_bfd_error_handler)
     (_("%B: version node not found for symbol %s"),
      sinfo->output_bfd, h->root.root.string);
   bfd_set_error (bfd_error_bad_value);
   sinfo->failed = TRUE;
   return FALSE;
 }

      if (hidden)
 h->hidden = 1;
    }



  if (h->verinfo.vertree == ((void*)0) && sinfo->verdefs != ((void*)0))
    {
      struct bfd_elf_version_tree *t;
      struct bfd_elf_version_tree *local_ver;
      struct bfd_elf_version_expr *d;




      local_ver = ((void*)0);
      for (t = sinfo->verdefs; t != ((void*)0); t = t->next)
 {
   if (t->globals.list != ((void*)0))
     {
       bfd_boolean matched;

       matched = FALSE;
       d = ((void*)0);
       while ((d = (*t->match) (&t->globals, d,
           h->root.root.string)) != ((void*)0))
  if (d->symver)
    matched = TRUE;
  else
    {



      h->verinfo.vertree = t;
      local_ver = ((void*)0);
      d->script = 1;
      break;
    }
       if (d != ((void*)0))
  break;
       else if (matched)


  (*bed->elf_backend_hide_symbol) (info, h, TRUE);
     }

   if (t->locals.list != ((void*)0))
     {
       d = ((void*)0);
       while ((d = (*t->match) (&t->locals, d,
           h->root.root.string)) != ((void*)0))
  {
    local_ver = t;



    if (d->pattern[0] != '*' || d->pattern[1] != '\0')
      break;
  }

       if (d != ((void*)0))
  break;
     }
 }

      if (local_ver != ((void*)0))
 {
   h->verinfo.vertree = local_ver;
   if (h->dynindx != -1
       && ! info->export_dynamic)
     {
       (*bed->elf_backend_hide_symbol) (info, h, TRUE);
     }
 }
    }

  return TRUE;
}
