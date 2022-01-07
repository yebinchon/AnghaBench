
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_8__ ;
typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef int bfd_byte ;
typedef scalar_t__ bfd_boolean ;
typedef int bfd ;
struct TYPE_18__ {unsigned int sh_info; int sh_size; int sh_link; int sh_offset; } ;
struct TYPE_19__ {unsigned int cverrefs; unsigned int cverdefs; TYPE_3__* verdef; TYPE_5__ dynverdef_hdr; TYPE_1__* verref; TYPE_5__ dynverref_hdr; } ;
struct TYPE_17__ {size_t vda_next; struct TYPE_17__* vda_nextptr; int * vda_nodename; int vda_name; } ;
struct TYPE_16__ {unsigned int vd_ndx; size_t vd_next; unsigned int vd_cnt; size_t vd_aux; int * vd_nodename; TYPE_4__* vd_auxptr; struct TYPE_16__* vd_nextdef; int * vd_bfd; scalar_t__ vd_flags; int vd_version; } ;
struct TYPE_15__ {size_t vna_next; unsigned int vna_other; struct TYPE_15__* vna_nextptr; int * vna_nodename; int vna_name; } ;
struct TYPE_14__ {unsigned int vn_cnt; size_t vn_aux; size_t vn_next; struct TYPE_14__* vn_nextref; TYPE_2__* vn_auxptr; int * vn_filename; int vn_file; int * vn_bfd; } ;
typedef TYPE_1__ Elf_Internal_Verneed ;
typedef TYPE_2__ Elf_Internal_Vernaux ;
typedef TYPE_3__ Elf_Internal_Verdef ;
typedef TYPE_4__ Elf_Internal_Verdaux ;
typedef TYPE_5__ Elf_Internal_Shdr ;
typedef int Elf_External_Verneed ;
typedef int Elf_External_Vernaux ;
typedef int Elf_External_Verdef ;
typedef int Elf_External_Verdaux ;


 int BFD_ASSERT (int) ;
 scalar_t__ FALSE ;
 int SEEK_SET ;
 scalar_t__ TRUE ;
 int VERSYM_VERSION ;
 int VER_DEF_CURRENT ;
 int _bfd_elf_swap_verdaux_in (int *,int *,TYPE_4__*) ;
 int _bfd_elf_swap_verdef_in (int *,int *,TYPE_3__*) ;
 int _bfd_elf_swap_vernaux_in (int *,int *,TYPE_2__*) ;
 int _bfd_elf_swap_verneed_in (int *,int *,TYPE_1__*) ;
 TYPE_4__* bfd_alloc (int *,int) ;
 void* bfd_alloc2 (int *,unsigned int,int) ;
 int bfd_bread (int *,int,int *) ;
 int * bfd_elf_get_dt_soname (int *) ;
 void* bfd_elf_string_from_elf_section (int *,int ,int ) ;
 int * bfd_malloc (int) ;
 scalar_t__ bfd_seek (int *,int ,int ) ;
 void* bfd_zalloc2 (int *,unsigned int,int) ;
 scalar_t__ elf_dynverdef (int *) ;
 scalar_t__ elf_dynverref (int *) ;
 TYPE_8__* elf_tdata (int *) ;
 int free (int *) ;
 int memcpy (TYPE_3__*,TYPE_3__*,int) ;

bfd_boolean
_bfd_elf_slurp_version_tables (bfd *abfd, bfd_boolean default_imported_symver)
{
  bfd_byte *contents = ((void*)0);
  unsigned int freeidx = 0;

  if (elf_dynverref (abfd) != 0)
    {
      Elf_Internal_Shdr *hdr;
      Elf_External_Verneed *everneed;
      Elf_Internal_Verneed *iverneed;
      unsigned int i;
      bfd_byte *contents_end;

      hdr = &elf_tdata (abfd)->dynverref_hdr;

      elf_tdata (abfd)->verref = bfd_zalloc2 (abfd, hdr->sh_info,
           sizeof (Elf_Internal_Verneed));
      if (elf_tdata (abfd)->verref == ((void*)0))
 goto error_return;

      elf_tdata (abfd)->cverrefs = hdr->sh_info;

      contents = bfd_malloc (hdr->sh_size);
      if (contents == ((void*)0))
 {
error_return_verref:
   elf_tdata (abfd)->verref = ((void*)0);
   elf_tdata (abfd)->cverrefs = 0;
   goto error_return;
 }
      if (bfd_seek (abfd, hdr->sh_offset, SEEK_SET) != 0
   || bfd_bread (contents, hdr->sh_size, abfd) != hdr->sh_size)
 goto error_return_verref;

      if (hdr->sh_info && hdr->sh_size < sizeof (Elf_External_Verneed))
 goto error_return_verref;

      BFD_ASSERT (sizeof (Elf_External_Verneed)
    == sizeof (Elf_External_Vernaux));
      contents_end = contents + hdr->sh_size - sizeof (Elf_External_Verneed);
      everneed = (Elf_External_Verneed *) contents;
      iverneed = elf_tdata (abfd)->verref;
      for (i = 0; i < hdr->sh_info; i++, iverneed++)
 {
   Elf_External_Vernaux *evernaux;
   Elf_Internal_Vernaux *ivernaux;
   unsigned int j;

   _bfd_elf_swap_verneed_in (abfd, everneed, iverneed);

   iverneed->vn_bfd = abfd;

   iverneed->vn_filename =
     bfd_elf_string_from_elf_section (abfd, hdr->sh_link,
          iverneed->vn_file);
   if (iverneed->vn_filename == ((void*)0))
     goto error_return_verref;

   if (iverneed->vn_cnt == 0)
     iverneed->vn_auxptr = ((void*)0);
   else
     {
       iverneed->vn_auxptr = bfd_alloc2 (abfd, iverneed->vn_cnt,
      sizeof (Elf_Internal_Vernaux));
       if (iverneed->vn_auxptr == ((void*)0))
  goto error_return_verref;
     }

   if (iverneed->vn_aux
       > (size_t) (contents_end - (bfd_byte *) everneed))
     goto error_return_verref;

   evernaux = ((Elf_External_Vernaux *)
        ((bfd_byte *) everneed + iverneed->vn_aux));
   ivernaux = iverneed->vn_auxptr;
   for (j = 0; j < iverneed->vn_cnt; j++, ivernaux++)
     {
       _bfd_elf_swap_vernaux_in (abfd, evernaux, ivernaux);

       ivernaux->vna_nodename =
  bfd_elf_string_from_elf_section (abfd, hdr->sh_link,
       ivernaux->vna_name);
       if (ivernaux->vna_nodename == ((void*)0))
  goto error_return_verref;

       if (j + 1 < iverneed->vn_cnt)
  ivernaux->vna_nextptr = ivernaux + 1;
       else
  ivernaux->vna_nextptr = ((void*)0);

       if (ivernaux->vna_next
    > (size_t) (contents_end - (bfd_byte *) evernaux))
  goto error_return_verref;

       evernaux = ((Elf_External_Vernaux *)
     ((bfd_byte *) evernaux + ivernaux->vna_next));

       if (ivernaux->vna_other > freeidx)
  freeidx = ivernaux->vna_other;
     }

   if (i + 1 < hdr->sh_info)
     iverneed->vn_nextref = iverneed + 1;
   else
     iverneed->vn_nextref = ((void*)0);

   if (iverneed->vn_next
       > (size_t) (contents_end - (bfd_byte *) everneed))
     goto error_return_verref;

   everneed = ((Elf_External_Verneed *)
        ((bfd_byte *) everneed + iverneed->vn_next));
 }

      free (contents);
      contents = ((void*)0);
    }

  if (elf_dynverdef (abfd) != 0)
    {
      Elf_Internal_Shdr *hdr;
      Elf_External_Verdef *everdef;
      Elf_Internal_Verdef *iverdef;
      Elf_Internal_Verdef *iverdefarr;
      Elf_Internal_Verdef iverdefmem;
      unsigned int i;
      unsigned int maxidx;
      bfd_byte *contents_end_def, *contents_end_aux;

      hdr = &elf_tdata (abfd)->dynverdef_hdr;

      contents = bfd_malloc (hdr->sh_size);
      if (contents == ((void*)0))
 goto error_return;
      if (bfd_seek (abfd, hdr->sh_offset, SEEK_SET) != 0
   || bfd_bread (contents, hdr->sh_size, abfd) != hdr->sh_size)
 goto error_return;

      if (hdr->sh_info && hdr->sh_size < sizeof (Elf_External_Verdef))
 goto error_return;

      BFD_ASSERT (sizeof (Elf_External_Verdef)
    >= sizeof (Elf_External_Verdaux));
      contents_end_def = contents + hdr->sh_size
    - sizeof (Elf_External_Verdef);
      contents_end_aux = contents + hdr->sh_size
    - sizeof (Elf_External_Verdaux);




      everdef = (Elf_External_Verdef *) contents;
      maxidx = 0;
      for (i = 0; i < hdr->sh_info; ++i)
 {
   _bfd_elf_swap_verdef_in (abfd, everdef, &iverdefmem);

   if ((iverdefmem.vd_ndx & ((unsigned) VERSYM_VERSION)) > maxidx)
     maxidx = iverdefmem.vd_ndx & ((unsigned) VERSYM_VERSION);

   if (iverdefmem.vd_next
       > (size_t) (contents_end_def - (bfd_byte *) everdef))
     goto error_return;

   everdef = ((Elf_External_Verdef *)
       ((bfd_byte *) everdef + iverdefmem.vd_next));
 }

      if (default_imported_symver)
 {
   if (freeidx > maxidx)
     maxidx = ++freeidx;
   else
     freeidx = ++maxidx;
 }
      elf_tdata (abfd)->verdef = bfd_zalloc2 (abfd, maxidx,
           sizeof (Elf_Internal_Verdef));
      if (elf_tdata (abfd)->verdef == ((void*)0))
 goto error_return;

      elf_tdata (abfd)->cverdefs = maxidx;

      everdef = (Elf_External_Verdef *) contents;
      iverdefarr = elf_tdata (abfd)->verdef;
      for (i = 0; i < hdr->sh_info; i++)
 {
   Elf_External_Verdaux *everdaux;
   Elf_Internal_Verdaux *iverdaux;
   unsigned int j;

   _bfd_elf_swap_verdef_in (abfd, everdef, &iverdefmem);

   if ((iverdefmem.vd_ndx & VERSYM_VERSION) == 0)
     {
error_return_verdef:
       elf_tdata (abfd)->verdef = ((void*)0);
       elf_tdata (abfd)->cverdefs = 0;
       goto error_return;
     }

   iverdef = &iverdefarr[(iverdefmem.vd_ndx & VERSYM_VERSION) - 1];
   memcpy (iverdef, &iverdefmem, sizeof (Elf_Internal_Verdef));

   iverdef->vd_bfd = abfd;

   if (iverdef->vd_cnt == 0)
     iverdef->vd_auxptr = ((void*)0);
   else
     {
       iverdef->vd_auxptr = bfd_alloc2 (abfd, iverdef->vd_cnt,
            sizeof (Elf_Internal_Verdaux));
       if (iverdef->vd_auxptr == ((void*)0))
  goto error_return_verdef;
     }

   if (iverdef->vd_aux
       > (size_t) (contents_end_aux - (bfd_byte *) everdef))
     goto error_return_verdef;

   everdaux = ((Elf_External_Verdaux *)
        ((bfd_byte *) everdef + iverdef->vd_aux));
   iverdaux = iverdef->vd_auxptr;
   for (j = 0; j < iverdef->vd_cnt; j++, iverdaux++)
     {
       _bfd_elf_swap_verdaux_in (abfd, everdaux, iverdaux);

       iverdaux->vda_nodename =
  bfd_elf_string_from_elf_section (abfd, hdr->sh_link,
       iverdaux->vda_name);
       if (iverdaux->vda_nodename == ((void*)0))
  goto error_return_verdef;

       if (j + 1 < iverdef->vd_cnt)
  iverdaux->vda_nextptr = iverdaux + 1;
       else
  iverdaux->vda_nextptr = ((void*)0);

       if (iverdaux->vda_next
    > (size_t) (contents_end_aux - (bfd_byte *) everdaux))
  goto error_return_verdef;

       everdaux = ((Elf_External_Verdaux *)
     ((bfd_byte *) everdaux + iverdaux->vda_next));
     }

   if (iverdef->vd_cnt)
     iverdef->vd_nodename = iverdef->vd_auxptr->vda_nodename;

   if ((size_t) (iverdef - iverdefarr) + 1 < maxidx)
     iverdef->vd_nextdef = iverdef + 1;
   else
     iverdef->vd_nextdef = ((void*)0);

   everdef = ((Elf_External_Verdef *)
       ((bfd_byte *) everdef + iverdef->vd_next));
 }

      free (contents);
      contents = ((void*)0);
    }
  else if (default_imported_symver)
    {
      if (freeidx < 3)
 freeidx = 3;
      else
 freeidx++;

      elf_tdata (abfd)->verdef = bfd_zalloc2 (abfd, freeidx,
           sizeof (Elf_Internal_Verdef));
      if (elf_tdata (abfd)->verdef == ((void*)0))
 goto error_return;

      elf_tdata (abfd)->cverdefs = freeidx;
    }


  if (default_imported_symver)
    {
      Elf_Internal_Verdef *iverdef;
      Elf_Internal_Verdaux *iverdaux;

      iverdef = &elf_tdata (abfd)->verdef[freeidx - 1];;

      iverdef->vd_version = VER_DEF_CURRENT;
      iverdef->vd_flags = 0;
      iverdef->vd_ndx = freeidx;
      iverdef->vd_cnt = 1;

      iverdef->vd_bfd = abfd;

      iverdef->vd_nodename = bfd_elf_get_dt_soname (abfd);
      if (iverdef->vd_nodename == ((void*)0))
 goto error_return_verdef;
      iverdef->vd_nextdef = ((void*)0);
      iverdef->vd_auxptr = bfd_alloc (abfd, sizeof (Elf_Internal_Verdaux));
      if (iverdef->vd_auxptr == ((void*)0))
 goto error_return_verdef;

      iverdaux = iverdef->vd_auxptr;
      iverdaux->vda_nodename = iverdef->vd_nodename;
      iverdaux->vda_nextptr = ((void*)0);
    }

  return TRUE;

 error_return:
  if (contents != ((void*)0))
    free (contents);
  return FALSE;
}
