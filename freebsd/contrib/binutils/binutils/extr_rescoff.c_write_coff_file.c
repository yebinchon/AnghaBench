
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_8__ ;
typedef struct TYPE_19__ TYPE_6__ ;
typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef int windres_bfd ;
struct TYPE_16__ {unsigned long length; TYPE_4__* d; int * last; } ;
struct TYPE_15__ {unsigned long length; TYPE_5__* d; int * last; } ;
struct TYPE_20__ {int length; TYPE_5__* d; int * last; } ;
struct TYPE_14__ {unsigned long length; TYPE_5__* d; int * last; } ;
struct coff_write_info {unsigned long dirsize; int dirstrsize; unsigned long dataentsize; int * relocs; int * wrbfd; TYPE_3__ resources; TYPE_2__ dataents; TYPE_8__ dirstrs; TYPE_1__ dirs; scalar_t__ reloc_count; int sympp; } ;
typedef int rc_uint_type ;
typedef int rc_res_directory ;
struct TYPE_17__ {scalar_t__ length; int res; struct TYPE_17__* next; } ;
typedef TYPE_4__ coff_res_data ;
struct TYPE_18__ {scalar_t__ length; int data; struct TYPE_18__* next; } ;
typedef TYPE_5__ bindata ;
typedef scalar_t__ bfd_byte ;
typedef int bfd ;
struct TYPE_19__ {int symbol_ptr_ptr; struct TYPE_19__* output_section; } ;
typedef TYPE_6__ asection ;


 int HAS_RELOC ;
 int HAS_SYMS ;
 int SEC_ALLOC ;
 int SEC_DATA ;
 int SEC_HAS_CONTENTS ;
 int SEC_LOAD ;
 int WR_KIND_BFD ;
 int _ (char*) ;
 int assert (int) ;
 int bfd_arch_arm ;
 int bfd_arch_i386 ;
 int bfd_arch_mips ;
 int bfd_arch_sh ;
 int bfd_close (int *) ;
 int bfd_fatal (char const*) ;
 TYPE_6__* bfd_make_section (int *,char*) ;
 int bfd_object ;
 int * bfd_openw (char const*,char const*) ;
 int bfd_set_arch_mach (int *,int ,int ) ;
 int bfd_set_file_flags (int *,int) ;
 int bfd_set_format (int *,int ) ;
 int bfd_set_reloc (int *,TYPE_6__*,int *,scalar_t__) ;
 int bfd_set_section_contents (int *,TYPE_6__*,int ,unsigned long,scalar_t__) ;
 int bfd_set_section_flags (int *,TYPE_6__*,int) ;
 int bfd_set_section_size (int *,TYPE_6__*,unsigned long) ;
 int bfd_set_symtab (int *,int ,int) ;
 scalar_t__* coff_alloc (TYPE_8__*,int) ;
 int coff_bin_sizes (int const*,struct coff_write_info*) ;
 int coff_to_bin (int const*,struct coff_write_info*) ;
 int fatal (int ) ;
 int free (int *) ;
 int res_to_bin (int *,int ,int ) ;
 int set_windres_bfd (int *,int *,TYPE_6__*,int ) ;
 int set_windres_bfd_content (int *,int ,unsigned long,scalar_t__) ;

void
write_coff_file (const char *filename, const char *target,
   const rc_res_directory *resources)
{
  bfd *abfd;
  asection *sec;
  struct coff_write_info cwi;
  windres_bfd wrbfd;
  bindata *d;
  coff_res_data *rd;
  unsigned long length, offset;

  if (filename == ((void*)0))
    fatal (_("filename required for COFF output"));

  abfd = bfd_openw (filename, target);
  if (abfd == ((void*)0))
    bfd_fatal (filename);

  if (! bfd_set_format (abfd, bfd_object))
    bfd_fatal ("bfd_set_format");
  if (! bfd_set_arch_mach (abfd, bfd_arch_i386, 0))
    bfd_fatal ("bfd_set_arch_mach(i386)");


  if (! bfd_set_file_flags (abfd, HAS_SYMS | HAS_RELOC))
    bfd_fatal ("bfd_set_file_flags");

  sec = bfd_make_section (abfd, ".rsrc");
  if (sec == ((void*)0))
    bfd_fatal ("bfd_make_section");

  if (! bfd_set_section_flags (abfd, sec,
          (SEC_HAS_CONTENTS | SEC_ALLOC
    | SEC_LOAD | SEC_DATA)))
    bfd_fatal ("bfd_set_section_flags");

  if (! bfd_set_symtab (abfd, sec->symbol_ptr_ptr, 1))
    bfd_fatal ("bfd_set_symtab");


  sec->output_section = sec;
  set_windres_bfd (&wrbfd, abfd, sec, WR_KIND_BFD);

  cwi.wrbfd = &wrbfd;
  cwi.sympp = sec->symbol_ptr_ptr;
  cwi.dirsize = 0;
  cwi.dirstrsize = 0;
  cwi.dataentsize = 0;
  cwi.dirs.d = ((void*)0);
  cwi.dirs.last = ((void*)0);
  cwi.dirs.length = 0;
  cwi.dirstrs.d = ((void*)0);
  cwi.dirstrs.last = ((void*)0);
  cwi.dirstrs.length = 0;
  cwi.dataents.d = ((void*)0);
  cwi.dataents.last = ((void*)0);
  cwi.dataents.length = 0;
  cwi.resources.d = ((void*)0);
  cwi.resources.last = ((void*)0);
  cwi.resources.length = 0;
  cwi.relocs = ((void*)0);
  cwi.reloc_count = 0;



  coff_bin_sizes (resources, &cwi);



  cwi.dirstrsize = (cwi.dirstrsize + 3) &~ 3;


  coff_to_bin (resources, &cwi);



  if ((cwi.dirstrs.length & 3) != 0)
    {
      bfd_byte *ex;

      ex = coff_alloc (&cwi.dirstrs, 2);
      ex[0] = 0;
      ex[1] = 0;
    }



  assert (cwi.dirs.length == cwi.dirsize);
  assert (cwi.dirstrs.length == cwi.dirstrsize);
  assert (cwi.dataents.length == cwi.dataentsize);

  length = (cwi.dirsize
     + cwi.dirstrsize
     + cwi.dataentsize
     + cwi.resources.length);

  if (! bfd_set_section_size (abfd, sec, length))
    bfd_fatal ("bfd_set_section_size");

  bfd_set_reloc (abfd, sec, cwi.relocs, cwi.reloc_count);

  offset = 0;
  for (d = cwi.dirs.d; d != ((void*)0); d = d->next)
    {
      if (! bfd_set_section_contents (abfd, sec, d->data, offset, d->length))
 bfd_fatal ("bfd_set_section_contents");
      offset += d->length;
    }
  for (d = cwi.dirstrs.d; d != ((void*)0); d = d->next)
    {
      set_windres_bfd_content (&wrbfd, d->data, offset, d->length);
      offset += d->length;
    }
  for (d = cwi.dataents.d; d != ((void*)0); d = d->next)
    {
      set_windres_bfd_content (&wrbfd, d->data, offset, d->length);
      offset += d->length;
    }
  for (rd = cwi.resources.d; rd != ((void*)0); rd = rd->next)
    {
      res_to_bin (cwi.wrbfd, (rc_uint_type) offset, rd->res);
      offset += rd->length;
    }

  assert (offset == length);

  if (! bfd_close (abfd))
    bfd_fatal ("bfd_close");


  free (cwi.relocs);
}
