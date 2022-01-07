
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_6__ ;
typedef struct TYPE_23__ TYPE_5__ ;
typedef struct TYPE_22__ TYPE_4__ ;
typedef struct TYPE_21__ TYPE_3__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;
typedef struct TYPE_18__ TYPE_14__ ;


struct bfd_link_info {scalar_t__ pei386_auto_import; TYPE_1__* hash; } ;
struct TYPE_21__ {struct bfd_link_hash_entry* next; } ;
struct TYPE_22__ {TYPE_3__ undef; } ;
struct TYPE_20__ {char* string; } ;
struct bfd_link_hash_entry {scalar_t__ type; TYPE_4__ u; TYPE_2__ root; } ;
struct archive_list {unsigned int indx; struct archive_list* next; } ;
struct archive_hash_table {int dummy; } ;
struct archive_hash_entry {struct archive_list* defs; } ;
struct TYPE_23__ {char* name; } ;
typedef TYPE_5__ carsym ;
typedef scalar_t__ bfd_size_type ;
typedef int bfd_boolean ;
struct TYPE_24__ {int archive_pass; } ;
typedef TYPE_6__ bfd ;
struct TYPE_19__ {struct bfd_link_hash_entry* undefs_tail; struct bfd_link_hash_entry* undefs; } ;
struct TYPE_18__ {int symdef_count; TYPE_5__* symdefs; } ;


 int FALSE ;
 int TRUE ;
 scalar_t__ archive_hash_allocate (struct archive_hash_table*,int) ;
 struct archive_hash_entry* archive_hash_lookup (struct archive_hash_table*,char*,int ,int ) ;
 int archive_hash_newfunc ;
 int archive_hash_table_free (struct archive_hash_table*) ;
 int archive_hash_table_init (struct archive_hash_table*,int ,int) ;
 TYPE_14__* bfd_ardata (TYPE_6__*) ;
 int bfd_check_format (TYPE_6__*,int ) ;
 int bfd_error_no_armap ;
 TYPE_6__* bfd_get_elt_at_index (TYPE_6__*,unsigned int) ;
 int bfd_has_map (TYPE_6__*) ;
 scalar_t__ bfd_link_hash_common ;
 scalar_t__ bfd_link_hash_undefined ;
 char* bfd_malloc (scalar_t__) ;
 int bfd_object ;
 int * bfd_openr_next_archived_file (TYPE_6__*,int *) ;
 int bfd_set_error (int ) ;
 int free (char*) ;
 int sprintf (char*,char*,char*) ;
 scalar_t__ strlen (char*) ;
 int stub1 (TYPE_6__*,struct bfd_link_info*,int *) ;

bfd_boolean
_bfd_generic_link_add_archive_symbols
  (bfd *abfd,
   struct bfd_link_info *info,
   bfd_boolean (*checkfn) (bfd *, struct bfd_link_info *, bfd_boolean *))
{
  carsym *arsyms;
  carsym *arsym_end;
  register carsym *arsym;
  int pass;
  struct archive_hash_table arsym_hash;
  unsigned int indx;
  struct bfd_link_hash_entry **pundef;

  if (! bfd_has_map (abfd))
    {

      if (bfd_openr_next_archived_file (abfd, ((void*)0)) == ((void*)0))
 return TRUE;
      bfd_set_error (bfd_error_no_armap);
      return FALSE;
    }

  arsyms = bfd_ardata (abfd)->symdefs;
  arsym_end = arsyms + bfd_ardata (abfd)->symdef_count;



  if (! archive_hash_table_init (&arsym_hash, archive_hash_newfunc,
     sizeof (struct archive_hash_entry)))
    return FALSE;
  for (arsym = arsyms, indx = 0; arsym < arsym_end; arsym++, indx++)
    {
      struct archive_hash_entry *arh;
      struct archive_list *l, **pp;

      arh = archive_hash_lookup (&arsym_hash, arsym->name, TRUE, FALSE);
      if (arh == ((void*)0))
 goto error_return;
      l = ((struct archive_list *)
    archive_hash_allocate (&arsym_hash, sizeof (struct archive_list)));
      if (l == ((void*)0))
 goto error_return;
      l->indx = indx;
      for (pp = &arh->defs; *pp != ((void*)0); pp = &(*pp)->next)
 ;
      *pp = l;
      l->next = ((void*)0);
    }




  pass = abfd->archive_pass + 1;



  pundef = &info->hash->undefs;
  while (*pundef != ((void*)0))
    {
      struct bfd_link_hash_entry *h;
      struct archive_hash_entry *arh;
      struct archive_list *l;

      h = *pundef;



      if (h->type != bfd_link_hash_undefined
   && h->type != bfd_link_hash_common)
 {







   if (*pundef != info->hash->undefs_tail)
     *pundef = (*pundef)->u.undef.next;
   else
     pundef = &(*pundef)->u.undef.next;
   continue;
 }


      arh = archive_hash_lookup (&arsym_hash, h->root.string, FALSE, FALSE);
      if (arh == ((void*)0))
 {


   if (info->pei386_auto_import)
     {
       bfd_size_type amt = strlen (h->root.string) + 10;
       char *buf = bfd_malloc (amt);
       if (buf == ((void*)0))
  return FALSE;

       sprintf (buf, "__imp_%s", h->root.string);
       arh = archive_hash_lookup (&arsym_hash, buf, FALSE, FALSE);
       free(buf);
     }
   if (arh == ((void*)0))
     {
       pundef = &(*pundef)->u.undef.next;
       continue;
     }
 }

      for (l = arh->defs; l != ((void*)0); l = l->next)
 {
   bfd *element;
   bfd_boolean needed;


   if (h->type != bfd_link_hash_undefined
       && h->type != bfd_link_hash_common)
     break;

   element = bfd_get_elt_at_index (abfd, l->indx);
   if (element == ((void*)0))
     goto error_return;



   if (element->archive_pass == -1
       || element->archive_pass == pass)
     continue;


   if (! bfd_check_format (element, bfd_object))
     {
       element->archive_pass = -1;
       continue;
     }



   if (! (*checkfn) (element, info, &needed))
     goto error_return;

   if (! needed)
     element->archive_pass = pass;
   else
     {
       element->archive_pass = -1;



       ++pass;
     }
 }

      pundef = &(*pundef)->u.undef.next;
    }

  archive_hash_table_free (&arsym_hash);


  abfd->archive_pass = pass;

  return TRUE;

 error_return:
  archive_hash_table_free (&arsym_hash);
  return FALSE;
}
