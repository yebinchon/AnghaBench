
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_9__ ;
typedef struct TYPE_19__ TYPE_7__ ;
typedef struct TYPE_18__ TYPE_6__ ;
typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_16__ {scalar_t__ value; TYPE_9__* section; } ;
struct TYPE_13__ {int abfd; } ;
struct TYPE_17__ {TYPE_4__ def; TYPE_1__ undef; } ;
struct TYPE_15__ {char* string; } ;
struct TYPE_18__ {scalar_t__ type; TYPE_5__ u; TYPE_3__ root; } ;
struct xcoff_link_hash_entry {int flags; int ldindx; int * ldsym; TYPE_6__ root; struct xcoff_link_hash_entry* descriptor; } ;
struct xcoff_import_file {char const* path; char const* file; char const* member; struct xcoff_import_file* next; } ;
struct bfd_link_info {TYPE_2__* callbacks; } ;
struct bfd_link_hash_entry {int dummy; } ;
typedef scalar_t__ bfd_vma ;
typedef int bfd_size_type ;
typedef int bfd_boolean ;
typedef int bfd ;
struct TYPE_20__ {int owner; } ;
struct TYPE_19__ {struct xcoff_import_file* imports; } ;
struct TYPE_14__ {int (* multiple_definition ) (struct bfd_link_info*,char*,int ,TYPE_9__*,scalar_t__,int *,TYPE_9__*,scalar_t__) ;} ;


 int BFD_ASSERT (int) ;
 int FALSE ;
 int TRUE ;
 int XCOFF_BUILT_LDSYM ;
 int XCOFF_CALLED ;
 int XCOFF_DESCRIPTOR ;
 unsigned int XCOFF_IMPORT ;
 TYPE_9__* bfd_abs_section_ptr ;
 struct xcoff_import_file* bfd_alloc (int *,int) ;
 scalar_t__ bfd_get_flavour (int *) ;
 int bfd_is_abs_section (TYPE_9__*) ;
 scalar_t__ bfd_link_hash_defined ;
 scalar_t__ bfd_link_hash_new ;
 scalar_t__ bfd_link_hash_undefined ;
 scalar_t__ bfd_target_xcoff_flavour ;
 scalar_t__ strcmp (char const*,char const*) ;
 int stub1 (struct bfd_link_info*,char*,int ,TYPE_9__*,scalar_t__,int *,TYPE_9__*,scalar_t__) ;
 TYPE_7__* xcoff_hash_table (struct bfd_link_info*) ;
 struct xcoff_link_hash_entry* xcoff_link_hash_lookup (TYPE_7__*,char*,int ,int ,int ) ;

bfd_boolean
bfd_xcoff_import_symbol (bfd *output_bfd,
    struct bfd_link_info *info,
    struct bfd_link_hash_entry *harg,
    bfd_vma val,
    const char *imppath,
    const char *impfile,
    const char *impmember,
    unsigned int syscall_flag)
{
  struct xcoff_link_hash_entry *h = (struct xcoff_link_hash_entry *) harg;

  if (bfd_get_flavour (output_bfd) != bfd_target_xcoff_flavour)
    return TRUE;




  if (h->root.root.string[0] == '.'
      && h->root.type == bfd_link_hash_undefined
      && val == (bfd_vma) -1)
    {
      struct xcoff_link_hash_entry *hds;

      hds = h->descriptor;
      if (hds == ((void*)0))
 {
   hds = xcoff_link_hash_lookup (xcoff_hash_table (info),
     h->root.root.string + 1,
     TRUE, FALSE, TRUE);
   if (hds == ((void*)0))
     return FALSE;
   if (hds->root.type == bfd_link_hash_new)
     {
       hds->root.type = bfd_link_hash_undefined;
       hds->root.u.undef.abfd = h->root.u.undef.abfd;
     }
   hds->flags |= XCOFF_DESCRIPTOR;
   BFD_ASSERT ((hds->flags & XCOFF_CALLED) == 0
        && (h->flags & XCOFF_DESCRIPTOR) == 0);
   hds->descriptor = h;
   h->descriptor = hds;
 }




      if (hds->root.type == bfd_link_hash_undefined)
 h = hds;
    }

  h->flags |= (XCOFF_IMPORT | syscall_flag);

  if (val != (bfd_vma) -1)
    {
      if (h->root.type == bfd_link_hash_defined
   && (! bfd_is_abs_section (h->root.u.def.section)
       || h->root.u.def.value != val))
 {
   if (! ((*info->callbacks->multiple_definition)
   (info, h->root.root.string, h->root.u.def.section->owner,
    h->root.u.def.section, h->root.u.def.value,
    output_bfd, bfd_abs_section_ptr, val)))
     return FALSE;
 }

      h->root.type = bfd_link_hash_defined;
      h->root.u.def.section = bfd_abs_section_ptr;
      h->root.u.def.value = val;
    }



  BFD_ASSERT (h->ldsym == ((void*)0));
  BFD_ASSERT ((h->flags & XCOFF_BUILT_LDSYM) == 0);
  if (imppath == ((void*)0))
    h->ldindx = -1;
  else
    {
      unsigned int c;
      struct xcoff_import_file **pp;



      for (pp = &xcoff_hash_table (info)->imports, c = 1;
    *pp != ((void*)0);
    pp = &(*pp)->next, ++c)
 {
   if (strcmp ((*pp)->path, imppath) == 0
       && strcmp ((*pp)->file, impfile) == 0
       && strcmp ((*pp)->member, impmember) == 0)
     break;
 }

      if (*pp == ((void*)0))
 {
   struct xcoff_import_file *n;
   bfd_size_type amt = sizeof (* n);

   n = bfd_alloc (output_bfd, amt);
   if (n == ((void*)0))
     return FALSE;
   n->next = ((void*)0);
   n->path = imppath;
   n->file = impfile;
   n->member = impmember;
   *pp = n;
 }

      h->ldindx = c;
    }

  return TRUE;
}
