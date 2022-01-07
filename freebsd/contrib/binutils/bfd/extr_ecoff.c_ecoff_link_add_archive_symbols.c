
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct ecoff_backend_data {int * (* get_elt_at_filepos ) (int *,int ) ;} ;
struct bfd_link_info {TYPE_3__* callbacks; TYPE_1__* hash; } ;
struct TYPE_10__ {struct bfd_link_hash_entry* next; } ;
struct TYPE_11__ {TYPE_4__ undef; } ;
struct TYPE_8__ {char const* string; } ;
struct bfd_link_hash_entry {scalar_t__ type; TYPE_5__ u; TYPE_2__ root; } ;
typedef int file_ptr ;
typedef int bfd_byte ;
typedef int bfd_boolean ;
typedef int bfd ;
struct TYPE_12__ {scalar_t__ tdata; } ;
struct TYPE_9__ {int (* add_archive_element ) (struct bfd_link_info*,int *,char const*) ;} ;
struct TYPE_7__ {struct bfd_link_hash_entry* undefs_tail; struct bfd_link_hash_entry* undefs; } ;


 int BFD_ASSERT (int) ;
 int FALSE ;
 int H_GET_32 (int *,int const*) ;
 int TRUE ;
 int _bfd_generic_link_add_archive_symbols (int *,struct bfd_link_info*,int ) ;
 TYPE_6__* bfd_ardata (int *) ;
 int bfd_check_format (int *,int ) ;
 int bfd_error_no_armap ;
 int bfd_has_map (int *) ;
 scalar_t__ bfd_link_hash_common ;
 scalar_t__ bfd_link_hash_undefined ;
 int bfd_object ;
 int * bfd_openr_next_archived_file (int *,int *) ;
 int bfd_set_error (int ) ;
 unsigned int ecoff_armap_hash (char const*,unsigned int*,unsigned int,unsigned int) ;
 struct ecoff_backend_data* ecoff_backend (int *) ;
 int ecoff_link_add_object_symbols (int *,struct bfd_link_info*) ;
 int ecoff_link_check_archive_element ;
 scalar_t__ streq (char const*,char const*) ;
 int * stub1 (int *,int ) ;
 int stub2 (struct bfd_link_info*,int *,char const*) ;

__attribute__((used)) static bfd_boolean
ecoff_link_add_archive_symbols (bfd *abfd, struct bfd_link_info *info)
{
  const struct ecoff_backend_data * const backend = ecoff_backend (abfd);
  const bfd_byte *raw_armap;
  struct bfd_link_hash_entry **pundef;
  unsigned int armap_count;
  unsigned int armap_log;
  unsigned int i;
  const bfd_byte *hashtable;
  const char *stringbase;

  if (! bfd_has_map (abfd))
    {

      if (bfd_openr_next_archived_file (abfd, ((void*)0)) == ((void*)0))
 return TRUE;
      bfd_set_error (bfd_error_no_armap);
      return FALSE;
    }





  raw_armap = (const bfd_byte *) bfd_ardata (abfd)->tdata;
  if (raw_armap == ((void*)0))
    return (_bfd_generic_link_add_archive_symbols
     (abfd, info, ecoff_link_check_archive_element));

  armap_count = H_GET_32 (abfd, raw_armap);

  armap_log = 0;
  for (i = 1; i < armap_count; i <<= 1)
    armap_log++;
  BFD_ASSERT (i == armap_count);

  hashtable = raw_armap + 4;
  stringbase = (const char *) raw_armap + armap_count * 8 + 8;


  pundef = &info->hash->undefs;
  while (*pundef != ((void*)0))
    {
      struct bfd_link_hash_entry *h;
      unsigned int hash, rehash = 0;
      unsigned int file_offset;
      const char *name;
      bfd *element;

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





      if (h->type != bfd_link_hash_undefined)
 {
   pundef = &(*pundef)->u.undef.next;
   continue;
 }


      hash = ecoff_armap_hash (h->root.string, &rehash, armap_count,
          armap_log);

      file_offset = H_GET_32 (abfd, hashtable + (hash * 8) + 4);
      if (file_offset == 0)
 {

   pundef = &(*pundef)->u.undef.next;
   continue;
 }

      name = stringbase + H_GET_32 (abfd, hashtable + (hash * 8));
      if (name[0] != h->root.string[0]
   || ! streq (name, h->root.string))
 {
   unsigned int srch;
   bfd_boolean found;


   found = FALSE;
   for (srch = (hash + rehash) & (armap_count - 1);
        srch != hash;
        srch = (srch + rehash) & (armap_count - 1))
     {
       file_offset = H_GET_32 (abfd, hashtable + (srch * 8) + 4);
       if (file_offset == 0)
  break;
       name = stringbase + H_GET_32 (abfd, hashtable + (srch * 8));
       if (name[0] == h->root.string[0]
    && streq (name, h->root.string))
  {
    found = TRUE;
    break;
  }
     }

   if (! found)
     {
       pundef = &(*pundef)->u.undef.next;
       continue;
     }

   hash = srch;
 }

      element = (*backend->get_elt_at_filepos) (abfd, (file_ptr) file_offset);
      if (element == ((void*)0))
 return FALSE;

      if (! bfd_check_format (element, bfd_object))
 return FALSE;




      if (! (*info->callbacks->add_archive_element) (info, element, name))
 return FALSE;
      if (! ecoff_link_add_object_symbols (element, info))
 return FALSE;

      pundef = &(*pundef)->u.undef.next;
    }

  return TRUE;
}
