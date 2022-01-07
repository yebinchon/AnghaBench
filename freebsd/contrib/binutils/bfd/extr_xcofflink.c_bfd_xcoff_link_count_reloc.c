
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xcoff_link_hash_entry {int flags; } ;
struct bfd_link_info {int dummy; } ;
typedef int bfd_boolean ;
typedef int bfd ;
struct TYPE_2__ {int ldrel_count; } ;


 int FALSE ;
 int TRUE ;
 int XCOFF_LDREL ;
 int XCOFF_REF_REGULAR ;
 int _ (char*) ;
 int _bfd_error_handler (int ,char const*) ;
 int bfd_error_no_symbols ;
 scalar_t__ bfd_get_flavour (int *) ;
 int bfd_set_error (int ) ;
 scalar_t__ bfd_target_xcoff_flavour ;
 scalar_t__ bfd_wrapped_link_hash_lookup (int *,struct bfd_link_info*,char const*,int ,int ,int ) ;
 int stub1 (int ,char const*) ;
 TYPE_1__* xcoff_hash_table (struct bfd_link_info*) ;
 int xcoff_mark_symbol (struct bfd_link_info*,struct xcoff_link_hash_entry*) ;

bfd_boolean
bfd_xcoff_link_count_reloc (bfd *output_bfd,
       struct bfd_link_info *info,
       const char *name)
{
  struct xcoff_link_hash_entry *h;

  if (bfd_get_flavour (output_bfd) != bfd_target_xcoff_flavour)
    return TRUE;

  h = ((struct xcoff_link_hash_entry *)
       bfd_wrapped_link_hash_lookup (output_bfd, info, name, FALSE, FALSE,
         FALSE));
  if (h == ((void*)0))
    {
      (*_bfd_error_handler) (_("%s: no such symbol"), name);
      bfd_set_error (bfd_error_no_symbols);
      return FALSE;
    }

  h->flags |= XCOFF_REF_REGULAR | XCOFF_LDREL;
  ++xcoff_hash_table (info)->ldrel_count;


  if (! xcoff_mark_symbol (info, h))
    return FALSE;

  return TRUE;
}
