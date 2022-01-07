
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* string; } ;
struct TYPE_4__ {scalar_t__ type; TYPE_1__ root; } ;
struct xcoff_link_hash_entry {int flags; scalar_t__ smclas; struct xcoff_link_hash_entry* descriptor; TYPE_2__ root; } ;
struct bfd_link_info {int dummy; } ;
struct bfd_link_hash_entry {int dummy; } ;
typedef scalar_t__ bfd_size_type ;
typedef int bfd_boolean ;
typedef int bfd ;


 int FALSE ;
 int TRUE ;
 int XCOFF_DESCRIPTOR ;
 int XCOFF_EXPORT ;
 scalar_t__ XMC_PR ;
 scalar_t__ bfd_get_flavour (int *) ;
 scalar_t__ bfd_link_hash_defined ;
 scalar_t__ bfd_link_hash_defweak ;
 char* bfd_malloc (scalar_t__) ;
 scalar_t__ bfd_target_xcoff_flavour ;
 int free (char*) ;
 int strcpy (char*,char*) ;
 scalar_t__ strlen (char*) ;
 int xcoff_hash_table (struct bfd_link_info*) ;
 struct xcoff_link_hash_entry* xcoff_link_hash_lookup (int ,char*,int ,int ,int ) ;
 int xcoff_mark_symbol (struct bfd_link_info*,struct xcoff_link_hash_entry*) ;

bfd_boolean
bfd_xcoff_export_symbol (bfd *output_bfd,
    struct bfd_link_info *info,
    struct bfd_link_hash_entry *harg)
{
  struct xcoff_link_hash_entry *h = (struct xcoff_link_hash_entry *) harg;

  if (bfd_get_flavour (output_bfd) != bfd_target_xcoff_flavour)
    return TRUE;

  h->flags |= XCOFF_EXPORT;






  if ((h->flags & XCOFF_DESCRIPTOR) == 0
      && h->root.root.string[0] != '.')
    {
      char *fnname;
      struct xcoff_link_hash_entry *hfn;
      bfd_size_type amt = strlen (h->root.root.string) + 2;

      fnname = bfd_malloc (amt);
      if (fnname == ((void*)0))
 return FALSE;
      fnname[0] = '.';
      strcpy (fnname + 1, h->root.root.string);
      hfn = xcoff_link_hash_lookup (xcoff_hash_table (info),
        fnname, FALSE, FALSE, TRUE);
      free (fnname);
      if (hfn != ((void*)0)
   && hfn->smclas == XMC_PR
   && (hfn->root.type == bfd_link_hash_defined
       || hfn->root.type == bfd_link_hash_defweak))
 {
   h->flags |= XCOFF_DESCRIPTOR;
   h->descriptor = hfn;
   hfn->descriptor = h;
 }
    }


  if (! xcoff_mark_symbol (info, h))
    return FALSE;






  if ((h->flags & XCOFF_DESCRIPTOR) != 0)
    {
      if (! xcoff_mark_symbol (info, h->descriptor))
 return FALSE;
    }

  return TRUE;
}
