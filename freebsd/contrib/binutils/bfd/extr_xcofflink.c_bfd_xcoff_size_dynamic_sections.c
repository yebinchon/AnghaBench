
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_50__ TYPE_9__ ;
typedef struct TYPE_49__ TYPE_8__ ;
typedef struct TYPE_48__ TYPE_7__ ;
typedef struct TYPE_47__ TYPE_6__ ;
typedef struct TYPE_46__ TYPE_5__ ;
typedef struct TYPE_45__ TYPE_4__ ;
typedef struct TYPE_44__ TYPE_3__ ;
typedef struct TYPE_43__ TYPE_2__ ;
typedef struct TYPE_42__ TYPE_1__ ;
typedef struct TYPE_41__ TYPE_15__ ;
typedef struct TYPE_40__ TYPE_12__ ;
typedef struct TYPE_39__ TYPE_10__ ;


struct xcoff_loader_info {int ldsym_count; scalar_t__ string_size; int * strings; void* failed; TYPE_9__* output_bfd; scalar_t__ string_alc; void* export_defineds; struct bfd_link_info* info; } ;
struct TYPE_43__ {TYPE_10__* section; scalar_t__ value; } ;
struct TYPE_44__ {TYPE_2__ def; } ;
struct TYPE_42__ {int string; } ;
struct TYPE_45__ {scalar_t__ type; TYPE_3__ u; TYPE_1__ root; } ;
struct xcoff_link_hash_entry {int flags; int ldindx; TYPE_4__ root; struct internal_ldsym* ldsym; } ;
struct xcoff_import_file {char const* path; char const* file; char const* member; struct xcoff_import_file* next; } ;
struct TYPE_47__ {scalar_t__ _n_zeroes; int _n_offset; } ;
struct TYPE_48__ {TYPE_6__ _n_n; } ;
struct internal_syment {int n_numaux; TYPE_7__ _n; } ;
struct internal_ldsym {int l_scnum; int l_smclas; scalar_t__ l_parm; scalar_t__ l_ifile; int l_smtype; scalar_t__ l_value; } ;
struct internal_ldhdr {int l_nsyms; int l_nreloc; size_t l_istlen; size_t l_nimpid; scalar_t__ l_impoff; scalar_t__ l_stlen; void* l_rldoff; void* l_symoff; scalar_t__ l_stoff; int l_version; } ;
struct bfd_strtab_hash {int dummy; } ;
struct bfd_link_info {scalar_t__ strip; scalar_t__ discard; int keep_memory; TYPE_5__* hash; TYPE_9__* input_bfds; scalar_t__ relocatable; scalar_t__ fini_function; scalar_t__ init_function; } ;
typedef scalar_t__ bfd_size_type ;
typedef int bfd_byte ;
typedef void* bfd_boolean ;
struct TYPE_50__ {scalar_t__ xvec; struct TYPE_50__* link_next; TYPE_10__* sections; } ;
typedef TYPE_9__ bfd ;
struct TYPE_39__ {int flags; scalar_t__ size; int * contents; struct TYPE_39__* next; } ;
typedef TYPE_10__ asection ;
struct TYPE_49__ {int size; } ;
struct TYPE_46__ {scalar_t__ creator; } ;
struct TYPE_41__ {unsigned long maxstack; unsigned long maxdata; int modtype; unsigned long* debug_indices; TYPE_10__** csects; } ;
struct TYPE_40__ {unsigned long file_align; int ldrel_count; TYPE_8__* debug_section; struct bfd_strtab_hash* debug_strtab; TYPE_10__* descriptor_section; TYPE_10__* toc_section; TYPE_10__* linkage_section; struct xcoff_import_file* imports; TYPE_10__* loader_section; struct internal_ldhdr ldhdr; TYPE_10__** special_sections; void* gc; void* textro; } ;


 int BFD_ASSERT (int) ;
 void* FALSE ;
 int SEC_MARK ;
 void* TRUE ;
 int XCOFF_DEF_REGULAR ;
 int XCOFF_ENTRY ;
 int XCOFF_MARK ;
 int XCOFF_NUMBER_OF_SPECIAL_SECTIONS ;
 int XCOFF_RTINIT ;
 int XTY_SD ;
 int _ (char*) ;
 int _bfd_coff_free_symbols (TYPE_9__*) ;
 int _bfd_coff_get_external_symbols (TYPE_9__*) ;
 int _bfd_error_handler (int ) ;
 scalar_t__ _bfd_stringtab_add (struct bfd_strtab_hash*,char*,void*,void*) ;
 int _bfd_stringtab_size (struct bfd_strtab_hash*) ;
 TYPE_10__* bfd_abs_section_ptr ;
 int bfd_coff_swap_sym_in (TYPE_9__*,void*,void*) ;
 scalar_t__ bfd_coff_symesz (TYPE_9__*) ;
 scalar_t__ bfd_coff_symname_in_debug (TYPE_9__*,struct internal_syment*) ;
 scalar_t__ bfd_get_flavour (TYPE_9__*) ;
 TYPE_10__* bfd_get_section_by_name (TYPE_9__*,char*) ;
 scalar_t__ bfd_link_hash_defined ;
 scalar_t__ bfd_link_hash_defweak ;
 struct internal_ldsym* bfd_malloc (scalar_t__) ;
 int bfd_malloc_and_get_section (TYPE_9__*,TYPE_10__*,int **) ;
 scalar_t__ bfd_target_xcoff_flavour ;
 int bfd_xcoff_ldhdr_version (TYPE_9__*) ;
 void* bfd_xcoff_ldhdrsz (TYPE_9__*) ;
 int bfd_xcoff_ldrelsz (TYPE_9__*) ;
 int bfd_xcoff_ldsymsz (TYPE_9__*) ;
 int bfd_xcoff_put_ldsymbol_name (TYPE_9__*,struct xcoff_loader_info*,struct internal_ldsym*,int ) ;
 int bfd_xcoff_swap_ldhdr_out (TYPE_9__*,struct internal_ldhdr*,int *) ;
 void* bfd_zalloc (TYPE_9__*,scalar_t__) ;
 scalar_t__ discard_all ;
 int free (int *) ;
 int memcpy (char*,int *,scalar_t__) ;
 scalar_t__ obj_coff_external_syms (TYPE_9__*) ;
 scalar_t__ obj_raw_syment_count (TYPE_9__*) ;
 int strcpy (char*,char const*) ;
 scalar_t__ strip_all ;
 scalar_t__ strip_debugger ;
 size_t strlen (char const*) ;
 int stub1 (int ) ;
 int xcoff_build_ldsyms ;
 TYPE_15__* xcoff_data (TYPE_9__*) ;
 TYPE_12__* xcoff_hash_table (struct bfd_link_info*) ;
 struct xcoff_link_hash_entry* xcoff_link_hash_lookup (TYPE_12__*,char const*,void*,void*,void*) ;
 int xcoff_link_hash_traverse (TYPE_12__*,int ,void*) ;
 int xcoff_mark (struct bfd_link_info*,TYPE_10__*) ;
 int xcoff_mark_symbol (struct bfd_link_info*,struct xcoff_link_hash_entry*) ;
 int xcoff_sweep (struct bfd_link_info*) ;

bfd_boolean
bfd_xcoff_size_dynamic_sections (bfd *output_bfd,
     struct bfd_link_info *info,
     const char *libpath,
     const char *entry,
     unsigned long file_align,
     unsigned long maxstack,
     unsigned long maxdata,
     bfd_boolean gc,
     int modtype,
     bfd_boolean textro,
     bfd_boolean export_defineds,
     asection **special_sections,
     bfd_boolean rtld)
{
  struct xcoff_link_hash_entry *hentry;
  asection *lsec;
  struct xcoff_loader_info ldinfo;
  int i;
  size_t impsize, impcount;
  struct xcoff_import_file *fl;
  struct internal_ldhdr *ldhdr;
  bfd_size_type stoff;
  char *out;
  asection *sec;
  bfd *sub;
  struct bfd_strtab_hash *debug_strtab;
  bfd_byte *debug_contents = ((void*)0);
  bfd_size_type amt;

  if (bfd_get_flavour (output_bfd) != bfd_target_xcoff_flavour)
    {
      for (i = 0; i < XCOFF_NUMBER_OF_SPECIAL_SECTIONS; i++)
 special_sections[i] = ((void*)0);
      return TRUE;
    }

  ldinfo.failed = FALSE;
  ldinfo.output_bfd = output_bfd;
  ldinfo.info = info;
  ldinfo.export_defineds = export_defineds;
  ldinfo.ldsym_count = 0;
  ldinfo.string_size = 0;
  ldinfo.strings = ((void*)0);
  ldinfo.string_alc = 0;

  xcoff_data (output_bfd)->maxstack = maxstack;
  xcoff_data (output_bfd)->maxdata = maxdata;
  xcoff_data (output_bfd)->modtype = modtype;

  xcoff_hash_table (info)->file_align = file_align;
  xcoff_hash_table (info)->textro = textro;

  hentry = ((void*)0);
  if (entry != ((void*)0))
    {
      hentry = xcoff_link_hash_lookup (xcoff_hash_table (info), entry,
           FALSE, FALSE, TRUE);
      if (hentry != ((void*)0))
 hentry->flags |= XCOFF_ENTRY;
    }


  if (info->init_function || info->fini_function || rtld)
    {
      struct xcoff_link_hash_entry *hsym;
      struct internal_ldsym *ldsym;

      hsym = xcoff_link_hash_lookup (xcoff_hash_table (info),
         "__rtinit", FALSE, FALSE, TRUE);
      if (hsym == ((void*)0))
 {
   (*_bfd_error_handler)
     (_("error: undefined symbol __rtinit"));
   return FALSE;
 }

      xcoff_mark_symbol (info, hsym);
      hsym->flags |= (XCOFF_DEF_REGULAR | XCOFF_RTINIT);


      amt = sizeof (* ldsym);
      ldsym = bfd_malloc (amt);

      ldsym->l_value = 0;
      ldsym->l_scnum = 2;
      ldsym->l_smtype = XTY_SD;
      ldsym->l_smclas = 5;
      ldsym->l_ifile = 0;
      ldsym->l_parm = 0;






      BFD_ASSERT (0 == ldinfo.ldsym_count);

      hsym->ldindx = 3;
      ldinfo.ldsym_count = 1;
      hsym->ldsym = ldsym;

      if (! bfd_xcoff_put_ldsymbol_name (ldinfo.output_bfd, &ldinfo,
      hsym->ldsym, hsym->root.root.string))
 return FALSE;



      hsym->flags |= XCOFF_DEF_REGULAR | XCOFF_MARK;
      hsym->root.type = bfd_link_hash_defined;
      hsym->root.u.def.value = 0;
    }


  if (info->relocatable
      || ! gc
      || hentry == ((void*)0)
      || (hentry->root.type != bfd_link_hash_defined
   && hentry->root.type != bfd_link_hash_defweak))
    {
      gc = FALSE;
      xcoff_hash_table (info)->gc = FALSE;



      for (sub = info->input_bfds; sub != ((void*)0); sub = sub->link_next)
 {
   asection *o;

   for (o = sub->sections; o != ((void*)0); o = o->next)
     {
       if ((o->flags & SEC_MARK) == 0)
  {
    if (! xcoff_mark (info, o))
      goto error_return;
  }
     }
 }
    }
  else
    {
      if (! xcoff_mark (info, hentry->root.u.def.section))
 goto error_return;
      xcoff_sweep (info);
      xcoff_hash_table (info)->gc = TRUE;
    }


  for (i = 0; i < XCOFF_NUMBER_OF_SPECIAL_SECTIONS; i++)
    {
      sec = xcoff_hash_table (info)->special_sections[i];

      if (sec != ((void*)0)
   && gc
   && (sec->flags & SEC_MARK) == 0)
 sec = ((void*)0);

      special_sections[i] = sec;
    }

  if (info->input_bfds == ((void*)0))

    return TRUE;

  xcoff_link_hash_traverse (xcoff_hash_table (info), xcoff_build_ldsyms,
       (void *) &ldinfo);
  if (ldinfo.failed)
    goto error_return;







  impsize = strlen (libpath) + 3;
  impcount = 1;
  for (fl = xcoff_hash_table (info)->imports; fl != ((void*)0); fl = fl->next)
    {
      ++impcount;
      impsize += (strlen (fl->path)
    + strlen (fl->file)
    + strlen (fl->member)
    + 3);
    }


  ldhdr = &xcoff_hash_table (info)->ldhdr;
  ldhdr->l_version = bfd_xcoff_ldhdr_version(output_bfd);
  ldhdr->l_nsyms = ldinfo.ldsym_count;
  ldhdr->l_nreloc = xcoff_hash_table (info)->ldrel_count;
  ldhdr->l_istlen = impsize;
  ldhdr->l_nimpid = impcount;
  ldhdr->l_impoff = (bfd_xcoff_ldhdrsz(output_bfd)
       + ldhdr->l_nsyms * bfd_xcoff_ldsymsz(output_bfd)
       + ldhdr->l_nreloc * bfd_xcoff_ldrelsz(output_bfd));
  ldhdr->l_stlen = ldinfo.string_size;
  stoff = ldhdr->l_impoff + impsize;
  if (ldinfo.string_size == 0)
    ldhdr->l_stoff = 0;
  else
    ldhdr->l_stoff = stoff;





  ldhdr->l_symoff = bfd_xcoff_ldhdrsz (output_bfd);
  ldhdr->l_rldoff = (bfd_xcoff_ldhdrsz (output_bfd)
       + ldhdr->l_nsyms * bfd_xcoff_ldsymsz (output_bfd));



  lsec = xcoff_hash_table (info)->loader_section;
  lsec->size = stoff + ldhdr->l_stlen;
  lsec->contents = bfd_zalloc (output_bfd, lsec->size);
  if (lsec->contents == ((void*)0))
    goto error_return;


  bfd_xcoff_swap_ldhdr_out (output_bfd, ldhdr, lsec->contents);


  out = (char *) lsec->contents + ldhdr->l_impoff;
  strcpy (out, libpath);
  out += strlen (libpath) + 1;
  *out++ = '\0';
  *out++ = '\0';
  for (fl = xcoff_hash_table (info)->imports; fl != ((void*)0); fl = fl->next)
    {
      const char *s;

      s = fl->path;
      while ((*out++ = *s++) != '\0')
 ;
      s = fl->file;
      while ((*out++ = *s++) != '\0')
 ;
      s = fl->member;
      while ((*out++ = *s++) != '\0')
 ;
    }

  BFD_ASSERT ((bfd_size_type) ((bfd_byte *) out - lsec->contents) == stoff);


  if (ldinfo.string_size > 0)
    {
      memcpy (out, ldinfo.strings, ldinfo.string_size);
      free (ldinfo.strings);
      ldinfo.strings = ((void*)0);
    }
  sec = xcoff_hash_table (info)->linkage_section;
  if (sec->size > 0)
    {
      sec->contents = bfd_zalloc (output_bfd, sec->size);
      if (sec->contents == ((void*)0))
 goto error_return;
    }
  sec = xcoff_hash_table (info)->toc_section;
  if (sec->size > 0)
    {
      sec->contents = bfd_zalloc (output_bfd, sec->size);
      if (sec->contents == ((void*)0))
 goto error_return;
    }
  sec = xcoff_hash_table (info)->descriptor_section;
  if (sec->size > 0)
    {
      sec->contents = bfd_zalloc (output_bfd, sec->size);
      if (sec->contents == ((void*)0))
 goto error_return;
    }



  debug_strtab = xcoff_hash_table (info)->debug_strtab;

  for (sub = info->input_bfds; sub != ((void*)0); sub = sub->link_next)
    {
      asection *subdeb;
      bfd_size_type symcount;
      unsigned long *debug_index;
      asection **csectpp;
      bfd_byte *esym, *esymend;
      bfd_size_type symesz;

      if (sub->xvec != info->hash->creator)
 continue;
      subdeb = bfd_get_section_by_name (sub, ".debug");
      if (subdeb == ((void*)0) || subdeb->size == 0)
 continue;

      if (info->strip == strip_all
   || info->strip == strip_debugger
   || info->discard == discard_all)
 {
   subdeb->size = 0;
   continue;
 }

      if (! _bfd_coff_get_external_symbols (sub))
 goto error_return;

      symcount = obj_raw_syment_count (sub);
      debug_index = bfd_zalloc (sub, symcount * sizeof (unsigned long));
      if (debug_index == ((void*)0))
 goto error_return;
      xcoff_data (sub)->debug_indices = debug_index;






      if (! bfd_malloc_and_get_section (sub, subdeb, &debug_contents))
 goto error_return;

      csectpp = xcoff_data (sub)->csects;


      if (((void*)0) != csectpp)
 {
   symesz = bfd_coff_symesz (sub);
   esym = (bfd_byte *) obj_coff_external_syms (sub);
   esymend = esym + symcount * symesz;

   while (esym < esymend)
     {
       struct internal_syment sym;

       bfd_coff_swap_sym_in (sub, (void *) esym, (void *) &sym);

       *debug_index = (unsigned long) -1;

       if (sym._n._n_n._n_zeroes == 0
    && *csectpp != ((void*)0)
    && (! gc
        || ((*csectpp)->flags & SEC_MARK) != 0
        || *csectpp == bfd_abs_section_ptr)
    && bfd_coff_symname_in_debug (sub, &sym))
  {
    char *name;
    bfd_size_type indx;

    name = (char *) debug_contents + sym._n._n_n._n_offset;
    indx = _bfd_stringtab_add (debug_strtab, name, TRUE, TRUE);
    if (indx == (bfd_size_type) -1)
      goto error_return;
    *debug_index = indx;
  }

       esym += (sym.n_numaux + 1) * symesz;
       csectpp += sym.n_numaux + 1;
       debug_index += sym.n_numaux + 1;
     }
 }

      free (debug_contents);
      debug_contents = ((void*)0);



      subdeb->size = 0;

      if (! info->keep_memory)
 {
   if (! _bfd_coff_free_symbols (sub))
     goto error_return;
 }
    }

  if (info->strip != strip_all)
    xcoff_hash_table (info)->debug_section->size =
      _bfd_stringtab_size (debug_strtab);

  return TRUE;

 error_return:
  if (ldinfo.strings != ((void*)0))
    free (ldinfo.strings);
  if (debug_contents != ((void*)0))
    free (debug_contents);
  return FALSE;
}
