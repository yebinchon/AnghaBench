
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xcoff_link_size_list {int size; struct xcoff_link_hash_entry* h; struct xcoff_link_size_list* next; } ;
struct xcoff_link_hash_entry {int flags; } ;
struct bfd_link_info {int dummy; } ;
struct bfd_link_hash_entry {int dummy; } ;
typedef int bfd_size_type ;
typedef int bfd_boolean ;
typedef int bfd ;
struct TYPE_2__ {struct xcoff_link_size_list* size_list; } ;


 int FALSE ;
 int TRUE ;
 int XCOFF_HAS_SIZE ;
 struct xcoff_link_size_list* bfd_alloc (int *,int) ;
 scalar_t__ bfd_get_flavour (int *) ;
 scalar_t__ bfd_target_xcoff_flavour ;
 TYPE_1__* xcoff_hash_table (struct bfd_link_info*) ;

bfd_boolean
bfd_xcoff_link_record_set (bfd *output_bfd,
      struct bfd_link_info *info,
      struct bfd_link_hash_entry *harg,
      bfd_size_type size)
{
  struct xcoff_link_hash_entry *h = (struct xcoff_link_hash_entry *) harg;
  struct xcoff_link_size_list *n;
  bfd_size_type amt;

  if (bfd_get_flavour (output_bfd) != bfd_target_xcoff_flavour)
    return TRUE;




  amt = sizeof (* n);
  n = bfd_alloc (output_bfd, amt);
  if (n == ((void*)0))
    return FALSE;
  n->next = xcoff_hash_table (info)->size_list;
  n->h = h;
  n->size = size;
  xcoff_hash_table (info)->size_list = n;

  h->flags |= XCOFF_HAS_SIZE;

  return TRUE;
}
