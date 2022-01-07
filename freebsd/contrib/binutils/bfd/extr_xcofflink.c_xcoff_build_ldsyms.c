
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_39__ TYPE_9__ ;
typedef struct TYPE_38__ TYPE_8__ ;
typedef struct TYPE_37__ TYPE_7__ ;
typedef struct TYPE_36__ TYPE_6__ ;
typedef struct TYPE_35__ TYPE_5__ ;
typedef struct TYPE_34__ TYPE_4__ ;
typedef struct TYPE_33__ TYPE_3__ ;
typedef struct TYPE_32__ TYPE_2__ ;
typedef struct TYPE_31__ TYPE_21__ ;
typedef struct TYPE_30__ TYPE_1__ ;
typedef struct TYPE_29__ TYPE_16__ ;
typedef struct TYPE_28__ TYPE_15__ ;
typedef struct TYPE_27__ TYPE_14__ ;
typedef struct TYPE_26__ TYPE_13__ ;
typedef struct TYPE_25__ TYPE_12__ ;
typedef struct TYPE_24__ TYPE_11__ ;
typedef struct TYPE_23__ TYPE_10__ ;


struct xcoff_loader_info {int output_bfd; scalar_t__ ldsym_count; void* failed; TYPE_15__* info; scalar_t__ export_defineds; } ;
struct TYPE_23__ {char* string; } ;
struct TYPE_38__ {scalar_t__ size; TYPE_7__* p; } ;
struct TYPE_36__ {int value; TYPE_13__* section; } ;
struct TYPE_30__ {scalar_t__ link; } ;
struct TYPE_39__ {TYPE_8__ c; TYPE_6__ def; TYPE_1__ i; } ;
struct TYPE_24__ {scalar_t__ type; TYPE_10__ root; TYPE_9__ u; } ;
struct TYPE_34__ {int toc_offset; } ;
struct xcoff_link_hash_entry {int flags; int indx; TYPE_11__ root; TYPE_16__* ldsym; scalar_t__ ldindx; int smclas; struct xcoff_link_hash_entry* descriptor; TYPE_5__* toc_section; TYPE_4__ u; } ;
struct internal_ldsym {int dummy; } ;
typedef int bfd_size_type ;
typedef void* bfd_boolean ;
struct TYPE_25__ {int flags; } ;
typedef TYPE_12__ bfd ;
struct TYPE_26__ {int reloc_count; int size; TYPE_2__* owner; } ;
typedef TYPE_13__ asection ;
struct TYPE_37__ {TYPE_21__* section; } ;
struct TYPE_35__ {int size; int reloc_count; } ;
struct TYPE_33__ {scalar_t__ creator; } ;
struct TYPE_32__ {int flags; scalar_t__ xvec; TYPE_12__* my_archive; } ;
struct TYPE_31__ {scalar_t__ size; } ;
struct TYPE_29__ {scalar_t__ l_ifile; } ;
struct TYPE_28__ {TYPE_3__* hash; } ;
struct TYPE_27__ {scalar_t__ gc; scalar_t__ ldrel_count; TYPE_13__* descriptor_section; TYPE_5__* toc_section; TYPE_13__* linkage_section; } ;


 int BFD_ASSERT (int) ;
 int DYNAMIC ;
 void* FALSE ;
 void* TRUE ;
 int XCOFF_BUILT_LDSYM ;
 int XCOFF_CALLED ;
 int XCOFF_DEF_DYNAMIC ;
 int XCOFF_DEF_REGULAR ;
 int XCOFF_DESCRIPTOR ;
 int XCOFF_ENTRY ;
 int XCOFF_EXPORT ;
 int XCOFF_IMPORT ;
 int XCOFF_LDREL ;
 int XCOFF_MARK ;
 int XCOFF_REF_REGULAR ;
 int XCOFF_RTINIT ;
 int XCOFF_SET_TOC ;
 int XMC_DS ;
 int XMC_GL ;
 int _ (char*) ;
 int _bfd_error_handler (int ,char*) ;
 scalar_t__ bfd_is_abs_section (TYPE_13__*) ;
 int bfd_is_com_section (TYPE_21__*) ;
 scalar_t__ bfd_link_hash_common ;
 scalar_t__ bfd_link_hash_defined ;
 scalar_t__ bfd_link_hash_defweak ;
 scalar_t__ bfd_link_hash_undefined ;
 scalar_t__ bfd_link_hash_undefweak ;
 scalar_t__ bfd_link_hash_warning ;
 TYPE_12__* bfd_openr_next_archived_file (TYPE_12__*,TYPE_12__*) ;
 scalar_t__ bfd_xcoff_function_descriptor_size (int ) ;
 scalar_t__ bfd_xcoff_glink_code_size (int ) ;
 scalar_t__ bfd_xcoff_is_xcoff32 (int ) ;
 scalar_t__ bfd_xcoff_is_xcoff64 (int ) ;
 int bfd_xcoff_put_ldsymbol_name (int ,struct xcoff_loader_info*,TYPE_16__*,char*) ;
 TYPE_16__* bfd_zalloc (int ,int) ;
 int stub1 (int ,char*) ;
 TYPE_14__* xcoff_hash_table (TYPE_15__*) ;

__attribute__((used)) static bfd_boolean
xcoff_build_ldsyms (struct xcoff_link_hash_entry *h, void * p)
{
  struct xcoff_loader_info *ldinfo = (struct xcoff_loader_info *) p;
  bfd_size_type amt;

  if (h->root.type == bfd_link_hash_warning)
    h = (struct xcoff_link_hash_entry *) h->root.u.i.link;


  if (h->flags & XCOFF_RTINIT)
      return TRUE;






  if (h->root.type == bfd_link_hash_defined
      && (h->flags & XCOFF_DEF_REGULAR) == 0
      && (h->flags & XCOFF_REF_REGULAR) != 0
      && (h->flags & XCOFF_DEF_DYNAMIC) == 0
      && (bfd_is_abs_section (h->root.u.def.section)
   || (h->root.u.def.section->owner->flags & DYNAMIC) == 0))
    h->flags |= XCOFF_DEF_REGULAR;




  if (ldinfo->export_defineds
      && (h->flags & XCOFF_DEF_REGULAR) != 0
      && h->root.root.string[0] != '.')
    {
      bfd_boolean export;
      export = TRUE;
      if ((h->root.type == bfd_link_hash_defined
    || h->root.type == bfd_link_hash_defweak)
   && h->root.u.def.section->owner != ((void*)0)
   && h->root.u.def.section->owner->my_archive != ((void*)0))
 {
   bfd *arbfd, *member;

   arbfd = h->root.u.def.section->owner->my_archive;
   member = bfd_openr_next_archived_file (arbfd, ((void*)0));
   while (member != ((void*)0))
     {
       if ((member->flags & DYNAMIC) != 0)
  {
    export = FALSE;
    break;
  }
       member = bfd_openr_next_archived_file (arbfd, member);
     }
 }

      if (export)
 h->flags |= XCOFF_EXPORT;
    }



  if (xcoff_hash_table (ldinfo->info)->gc
      && (h->flags & XCOFF_MARK) == 0
      && (h->root.type == bfd_link_hash_defined
   || h->root.type == bfd_link_hash_defweak)
      && (h->root.u.def.section->owner == ((void*)0)
   || (h->root.u.def.section->owner->xvec
       != ldinfo->info->hash->creator)))
    h->flags |= XCOFF_MARK;





  if ((h->flags & XCOFF_CALLED) != 0
      && (h->root.type == bfd_link_hash_undefined
   || h->root.type == bfd_link_hash_undefweak)
      && h->root.root.string[0] == '.'
      && h->descriptor != ((void*)0)
      && ((h->descriptor->flags & XCOFF_DEF_DYNAMIC) != 0
   || ((h->descriptor->flags & XCOFF_IMPORT) != 0
       && (h->descriptor->flags & XCOFF_DEF_REGULAR) == 0))
      && (! xcoff_hash_table (ldinfo->info)->gc
   || (h->flags & XCOFF_MARK) != 0))
    {
      asection *sec;
      struct xcoff_link_hash_entry *hds;

      sec = xcoff_hash_table (ldinfo->info)->linkage_section;
      h->root.type = bfd_link_hash_defined;
      h->root.u.def.section = sec;
      h->root.u.def.value = sec->size;
      h->smclas = XMC_GL;
      h->flags |= XCOFF_DEF_REGULAR;
      sec->size += bfd_xcoff_glink_code_size(ldinfo->output_bfd);



      hds = h->descriptor;
      BFD_ASSERT ((hds->root.type == bfd_link_hash_undefined
     || hds->root.type == bfd_link_hash_undefweak)
    && (hds->flags & XCOFF_DEF_REGULAR) == 0);
      hds->flags |= XCOFF_MARK;
      if (hds->toc_section == ((void*)0))
 {
   int byte_size;




   if (bfd_xcoff_is_xcoff64 (ldinfo->output_bfd))
     byte_size = 8;
   else if (bfd_xcoff_is_xcoff32 (ldinfo->output_bfd))
     byte_size = 4;
   else
     return FALSE;

   hds->toc_section = xcoff_hash_table (ldinfo->info)->toc_section;
   hds->u.toc_offset = hds->toc_section->size;
   hds->toc_section->size += byte_size;
   ++xcoff_hash_table (ldinfo->info)->ldrel_count;
   ++hds->toc_section->reloc_count;
   hds->indx = -2;
   hds->flags |= XCOFF_SET_TOC | XCOFF_LDREL;



   xcoff_build_ldsyms (hds, p);
 }
    }



  if ((h->flags & XCOFF_EXPORT) != 0
      && (h->flags & XCOFF_IMPORT) == 0
      && (h->flags & XCOFF_DEF_REGULAR) == 0
      && (h->flags & XCOFF_DEF_DYNAMIC) == 0
      && (h->root.type == bfd_link_hash_undefined
   || h->root.type == bfd_link_hash_undefweak))
    {
      if ((h->flags & XCOFF_DESCRIPTOR) != 0
   && (h->descriptor->root.type == bfd_link_hash_defined
       || h->descriptor->root.type == bfd_link_hash_defweak))
 {
   asection *sec;






   sec = xcoff_hash_table (ldinfo->info)->descriptor_section;
   h->root.type = bfd_link_hash_defined;
   h->root.u.def.section = sec;
   h->root.u.def.value = sec->size;
   h->smclas = XMC_DS;
   h->flags |= XCOFF_DEF_REGULAR;



   sec->size +=
     bfd_xcoff_function_descriptor_size(ldinfo->output_bfd);



   xcoff_hash_table (ldinfo->info)->ldrel_count += 2;
   sec->reloc_count += 2;



 }
      else
 {
   (*_bfd_error_handler)
     (_("warning: attempt to export undefined symbol `%s'"),
      h->root.root.string);
   h->ldsym = ((void*)0);
   return TRUE;
 }
    }




  if (h->root.type == bfd_link_hash_common
      && (! xcoff_hash_table (ldinfo->info)->gc
   || (h->flags & XCOFF_MARK) != 0)
      && h->root.u.c.p->section->size == 0)
    {
      BFD_ASSERT (bfd_is_com_section (h->root.u.c.p->section));
      h->root.u.c.p->section->size = h->root.u.c.size;
    }






  if (((h->flags & XCOFF_LDREL) == 0
       || h->root.type == bfd_link_hash_defined
       || h->root.type == bfd_link_hash_defweak
       || h->root.type == bfd_link_hash_common)
      && (h->flags & XCOFF_ENTRY) == 0
      && (h->flags & XCOFF_EXPORT) == 0)
    {
      h->ldsym = ((void*)0);
      return TRUE;
    }



  if (xcoff_hash_table (ldinfo->info)->gc
      && (h->flags & XCOFF_MARK) == 0)
    {
      h->ldsym = ((void*)0);
      return TRUE;
    }



  if ((h->flags & XCOFF_BUILT_LDSYM) != 0)
    return TRUE;



  BFD_ASSERT (h->ldsym == ((void*)0));
  amt = sizeof (struct internal_ldsym);
  h->ldsym = bfd_zalloc (ldinfo->output_bfd, amt);
  if (h->ldsym == ((void*)0))
    {
      ldinfo->failed = TRUE;
      return FALSE;
    }

  if ((h->flags & XCOFF_IMPORT) != 0)
    h->ldsym->l_ifile = h->ldindx;



  h->ldindx = ldinfo->ldsym_count + 3;

  ++ldinfo->ldsym_count;

  if (! bfd_xcoff_put_ldsymbol_name (ldinfo->output_bfd, ldinfo,
         h->ldsym, h->root.root.string))
    return FALSE;

  h->flags |= XCOFF_BUILT_LDSYM;

  return TRUE;
}
