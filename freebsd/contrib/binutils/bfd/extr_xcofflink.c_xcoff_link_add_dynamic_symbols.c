
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_35__ TYPE_9__ ;
typedef struct TYPE_34__ TYPE_8__ ;
typedef struct TYPE_33__ TYPE_7__ ;
typedef struct TYPE_32__ TYPE_6__ ;
typedef struct TYPE_31__ TYPE_5__ ;
typedef struct TYPE_30__ TYPE_4__ ;
typedef struct TYPE_29__ TYPE_3__ ;
typedef struct TYPE_28__ TYPE_2__ ;
typedef struct TYPE_27__ TYPE_1__ ;
typedef struct TYPE_26__ TYPE_15__ ;
typedef struct TYPE_25__ TYPE_13__ ;


struct TYPE_27__ {int value; void* section; } ;
struct TYPE_31__ {TYPE_8__* abfd; } ;
struct TYPE_32__ {TYPE_1__ def; TYPE_5__ undef; } ;
struct TYPE_33__ {scalar_t__ type; TYPE_6__ u; } ;
struct xcoff_link_hash_entry {int flags; scalar_t__ smclas; TYPE_7__ root; struct xcoff_link_hash_entry* descriptor; } ;
struct xcoff_import_file {char* path; char const* file; char const* member; struct xcoff_import_file* next; } ;
struct TYPE_29__ {scalar_t__ _l_zeroes; int _l_offset; } ;
struct TYPE_30__ {int _l_name; TYPE_3__ _l_l; } ;
struct internal_ldsym {int l_smtype; scalar_t__ l_smclas; int l_value; TYPE_4__ _l; } ;
struct internal_ldhdr {int l_stoff; int l_nsyms; } ;
struct bfd_link_info {TYPE_2__* hash; } ;
typedef scalar_t__ bfd_size_type ;
typedef char bfd_byte ;
typedef int bfd_boolean ;
struct TYPE_34__ {scalar_t__ xvec; int flags; struct TYPE_34__* my_archive; } ;
typedef TYPE_8__ bfd ;
typedef int asection ;
struct TYPE_35__ {struct xcoff_import_file* imports; } ;
struct TYPE_28__ {scalar_t__ creator; } ;
struct TYPE_26__ {char* contents; int keep_contents; } ;
struct TYPE_25__ {unsigned int import_file_id; } ;


 int DYNAMIC ;
 int FALSE ;
 int L_EXPORT ;
 int SYMNMLEN ;
 int TRUE ;
 int XCOFF_DEF_DYNAMIC ;
 int XCOFF_DESCRIPTOR ;
 scalar_t__ XMC_DS ;
 scalar_t__ XMC_PR ;
 scalar_t__ XMC_UA ;
 scalar_t__ XMC_XO ;
 int _ (char*) ;
 int _bfd_error_handler (int ,char*) ;
 void* bfd_abs_section_ptr ;
 struct xcoff_import_file* bfd_alloc (TYPE_8__*,scalar_t__) ;
 int bfd_error_invalid_operation ;
 int bfd_error_no_symbols ;
 char* bfd_get_filename (TYPE_8__*) ;
 int * bfd_get_section_by_name (TYPE_8__*,char*) ;
 void* bfd_link_hash_defined ;
 scalar_t__ bfd_link_hash_new ;
 scalar_t__ bfd_link_hash_undefined ;
 scalar_t__ bfd_link_hash_undefweak ;
 char* bfd_malloc (scalar_t__) ;
 int bfd_section_list_clear (TYPE_8__*) ;
 int bfd_set_error (int ) ;
 int bfd_xcoff_ldsymsz (TYPE_8__*) ;
 int bfd_xcoff_loader_symbol_offset (TYPE_8__*,struct internal_ldhdr*) ;
 int bfd_xcoff_swap_ldhdr_in (TYPE_8__*,char*,struct internal_ldhdr*) ;
 int bfd_xcoff_swap_ldsym_in (TYPE_8__*,char*,struct internal_ldsym*) ;
 TYPE_15__* coff_section_data (TYPE_8__*,int *) ;
 int free (char*) ;
 int memcpy (char*,int ,int) ;
 int strcpy (char*,char const*) ;
 scalar_t__ strlen (char const*) ;
 char* strrchr (char const*,char) ;
 int stub1 (int ,char*) ;
 int stub2 (int ,char*) ;
 TYPE_13__* xcoff_data (TYPE_8__*) ;
 int xcoff_get_section_contents (TYPE_8__*,int *) ;
 TYPE_9__* xcoff_hash_table (struct bfd_link_info*) ;
 struct xcoff_link_hash_entry* xcoff_link_hash_lookup (TYPE_9__*,char const*,int ,int ,int ) ;

__attribute__((used)) static bfd_boolean
xcoff_link_add_dynamic_symbols (bfd *abfd, struct bfd_link_info *info)
{
  asection *lsec;
  bfd_byte *contents;
  struct internal_ldhdr ldhdr;
  const char *strings;
  bfd_byte *elsym, *elsymend;
  struct xcoff_import_file *n;
  const char *bname;
  const char *mname;
  const char *s;
  unsigned int c;
  struct xcoff_import_file **pp;



   if (info->hash->creator != abfd->xvec)
    {
      (*_bfd_error_handler)
 (_("%s: XCOFF shared object when not producing XCOFF output"),
  bfd_get_filename (abfd));
      bfd_set_error (bfd_error_invalid_operation);
      return FALSE;
    }
  lsec = bfd_get_section_by_name (abfd, ".loader");
  if (lsec == ((void*)0))
    {
      (*_bfd_error_handler)
 (_("%s: dynamic object with no .loader section"),
  bfd_get_filename (abfd));
      bfd_set_error (bfd_error_no_symbols);
      return FALSE;
    }

  if (! xcoff_get_section_contents (abfd, lsec))
    return FALSE;
  contents = coff_section_data (abfd, lsec)->contents;



  bfd_section_list_clear (abfd);

  bfd_xcoff_swap_ldhdr_in (abfd, contents, &ldhdr);

  strings = (char *) contents + ldhdr.l_stoff;

  elsym = contents + bfd_xcoff_loader_symbol_offset(abfd, &ldhdr);

  elsymend = elsym + ldhdr.l_nsyms * bfd_xcoff_ldsymsz(abfd);

  for (; elsym < elsymend; elsym += bfd_xcoff_ldsymsz(abfd))
    {
      struct internal_ldsym ldsym;
      char nambuf[SYMNMLEN + 1];
      const char *name;
      struct xcoff_link_hash_entry *h;

      bfd_xcoff_swap_ldsym_in (abfd, elsym, &ldsym);


      if ((ldsym.l_smtype & L_EXPORT) == 0)
 continue;

      if (ldsym._l._l_l._l_zeroes == 0)
 name = strings + ldsym._l._l_l._l_offset;
      else
 {
   memcpy (nambuf, ldsym._l._l_name, SYMNMLEN);
   nambuf[SYMNMLEN] = '\0';
   name = nambuf;
 }






      h = xcoff_link_hash_lookup (xcoff_hash_table (info), name, TRUE,
      TRUE, TRUE);
      if (h == ((void*)0))
 return FALSE;

      h->flags |= XCOFF_DEF_DYNAMIC;




      if ((h->root.type == bfd_link_hash_undefined
    || h->root.type == bfd_link_hash_undefweak)
   && (h->root.u.undef.abfd == ((void*)0)
       || (h->root.u.undef.abfd->flags & DYNAMIC) == 0))
 h->root.u.undef.abfd = abfd;

      if (h->root.type == bfd_link_hash_new)
 {
   h->root.type = bfd_link_hash_undefined;
   h->root.u.undef.abfd = abfd;

 }

      if (h->smclas == XMC_UA
   || h->root.type == bfd_link_hash_undefined
   || h->root.type == bfd_link_hash_undefweak)
 h->smclas = ldsym.l_smclas;






      if (h->smclas == XMC_XO
   && (h->root.type == bfd_link_hash_undefined
       || h->root.type == bfd_link_hash_undefweak))
 {

   h->root.type = bfd_link_hash_defined;
   h->root.u.def.section = bfd_abs_section_ptr;
   h->root.u.def.value = ldsym.l_value;
 }



      if (h->smclas == XMC_DS
   || (h->smclas == XMC_XO && name[0] != '.'))
 h->flags |= XCOFF_DESCRIPTOR;
      if ((h->flags & XCOFF_DESCRIPTOR) != 0)
 {
   struct xcoff_link_hash_entry *hds;

   hds = h->descriptor;
   if (hds == ((void*)0))
     {
       char *dsnm;

       dsnm = bfd_malloc ((bfd_size_type) strlen (name) + 2);
       if (dsnm == ((void*)0))
  return FALSE;
       dsnm[0] = '.';
       strcpy (dsnm + 1, name);
       hds = xcoff_link_hash_lookup (xcoff_hash_table (info), dsnm,
         TRUE, TRUE, TRUE);
       free (dsnm);
       if (hds == ((void*)0))
  return FALSE;

       if (hds->root.type == bfd_link_hash_new)
  {
    hds->root.type = bfd_link_hash_undefined;
    hds->root.u.undef.abfd = abfd;


  }

       hds->descriptor = h;
       h->descriptor = hds;
     }

   hds->flags |= XCOFF_DEF_DYNAMIC;
   if (hds->smclas == XMC_UA)
     hds->smclas = XMC_PR;




   if (h->smclas == XMC_XO
       && (hds->root.type == bfd_link_hash_undefined
    || hds->root.type == bfd_link_hash_undefweak))
     {
       hds->smclas = XMC_XO;
       hds->root.type = bfd_link_hash_defined;
       hds->root.u.def.section = bfd_abs_section_ptr;
       hds->root.u.def.value = ldsym.l_value;
     }
 }
    }

  if (contents != ((void*)0) && ! coff_section_data (abfd, lsec)->keep_contents)
    {
      free (coff_section_data (abfd, lsec)->contents);
      coff_section_data (abfd, lsec)->contents = ((void*)0);
    }


  n = bfd_alloc (abfd, (bfd_size_type) sizeof (struct xcoff_import_file));
  if (n == ((void*)0))
    return FALSE;
  n->next = ((void*)0);




  n->path = "";
  if (abfd->my_archive == ((void*)0))
    {
      bname = bfd_get_filename (abfd);
      mname = "";
    }
  else
    {
      bname = bfd_get_filename (abfd->my_archive);
      mname = bfd_get_filename (abfd);
    }
  s = strrchr (bname, '/');
  if (s != ((void*)0))
    bname = s + 1;
  n->file = bname;
  n->member = mname;



  for (pp = &xcoff_hash_table (info)->imports, c = 1;
       *pp != ((void*)0);
       pp = &(*pp)->next, ++c)
    ;
  *pp = n;

  xcoff_data (abfd)->import_file_id = c;

  return TRUE;
}
