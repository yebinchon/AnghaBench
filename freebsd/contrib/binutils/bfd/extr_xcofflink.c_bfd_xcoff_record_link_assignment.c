
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xcoff_link_hash_entry {int flags; } ;
struct bfd_link_info {int dummy; } ;
typedef int bfd_boolean ;
typedef int bfd ;


 int FALSE ;
 int TRUE ;
 int XCOFF_DEF_REGULAR ;
 scalar_t__ bfd_get_flavour (int *) ;
 scalar_t__ bfd_target_xcoff_flavour ;
 int xcoff_hash_table (struct bfd_link_info*) ;
 struct xcoff_link_hash_entry* xcoff_link_hash_lookup (int ,char const*,int ,int ,int ) ;

bfd_boolean
bfd_xcoff_record_link_assignment (bfd *output_bfd,
      struct bfd_link_info *info,
      const char *name)
{
  struct xcoff_link_hash_entry *h;

  if (bfd_get_flavour (output_bfd) != bfd_target_xcoff_flavour)
    return TRUE;

  h = xcoff_link_hash_lookup (xcoff_hash_table (info), name, TRUE, TRUE,
         FALSE);
  if (h == ((void*)0))
    return FALSE;

  h->flags |= XCOFF_DEF_REGULAR;

  return TRUE;
}
