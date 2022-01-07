
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


struct section_list {int flags; scalar_t__ set_flags; } ;
typedef TYPE_1__* sec_ptr ;
typedef int flagword ;
typedef int bfd_size_type ;
typedef int bfd_byte ;
typedef int bfd ;
struct TYPE_17__ {int * sym_ptr_ptr; } ;
typedef TYPE_2__ arelent ;
struct TYPE_16__ {int lma; struct TYPE_16__* output_section; } ;


 int FALSE ;
 int RETURN_NONFATAL (int ) ;
 int SEC_GROUP ;
 int SEC_HAS_CONTENTS ;
 scalar_t__ STRIP_ALL ;
 int _ (char*) ;
 int bfd_asymbol_name (int ) ;
 long bfd_canonicalize_reloc (int *,TYPE_1__*,TYPE_2__**,int ) ;
 scalar_t__ bfd_core ;
 scalar_t__ bfd_error_invalid_operation ;
 scalar_t__ bfd_get_error () ;
 int bfd_get_filename (int *) ;
 scalar_t__ bfd_get_format (int *) ;
 long bfd_get_reloc_upper_bound (int *,TYPE_1__*) ;
 int bfd_get_section_contents (int *,TYPE_1__*,void*,int ,int) ;
 int bfd_get_section_flags (int *,TYPE_1__*) ;
 int bfd_get_section_name (int *,TYPE_1__*) ;
 int bfd_get_section_size (TYPE_1__*) ;
 int bfd_section_name (int *,TYPE_1__*) ;
 int bfd_set_reloc (int *,TYPE_1__*,TYPE_2__**,long) ;
 int bfd_set_section_contents (int *,TYPE_1__*,void*,int ,int) ;
 scalar_t__ copy_byte ;
 scalar_t__ extract_symbol ;
 int fatal (int ,int ,int) ;
 struct section_list* find_section_list (int ,int ) ;
 int free (void*) ;
 int interleave ;
 scalar_t__ is_specified_symbol (int ,int ) ;
 scalar_t__ is_strip_section (int *,TYPE_1__*) ;
 int isympp ;
 int keep_specific_list ;
 int memset (void*,int ,int) ;
 int reverse_bytes ;
 scalar_t__ status ;
 scalar_t__ strip_symbols ;
 void* xmalloc (int) ;

__attribute__((used)) static void
copy_section (bfd *ibfd, sec_ptr isection, void *obfdarg)
{
  bfd *obfd = obfdarg;
  struct section_list *p;
  arelent **relpp;
  long relcount;
  sec_ptr osection;
  bfd_size_type size;
  long relsize;
  flagword flags;



  if (status != 0)
    return;

  if (is_strip_section (ibfd, isection))
    return;

  flags = bfd_get_section_flags (ibfd, isection);
  if ((flags & SEC_GROUP) != 0)
    return;

  osection = isection->output_section;
  size = bfd_get_section_size (isection);

  if (size == 0 || osection == 0)
    return;

  p = find_section_list (bfd_get_section_name (ibfd, isection), FALSE);


  if (bfd_get_format (obfd) == bfd_core)
    relsize = 0;
  else
    {
      relsize = bfd_get_reloc_upper_bound (ibfd, isection);

      if (relsize < 0)
 {

   if (relsize == -1 && bfd_get_error () == bfd_error_invalid_operation)
     relsize = 0;
   else
     RETURN_NONFATAL (bfd_get_filename (ibfd));
 }
    }

  if (relsize == 0)
    bfd_set_reloc (obfd, osection, ((void*)0), 0);
  else
    {
      relpp = xmalloc (relsize);
      relcount = bfd_canonicalize_reloc (ibfd, isection, relpp, isympp);
      if (relcount < 0)
 RETURN_NONFATAL (bfd_get_filename (ibfd));

      if (strip_symbols == STRIP_ALL)
 {


   arelent **temp_relpp;
   long temp_relcount = 0;
   long i;

   temp_relpp = xmalloc (relsize);
   for (i = 0; i < relcount; i++)
     if (is_specified_symbol (bfd_asymbol_name (*relpp[i]->sym_ptr_ptr),
         keep_specific_list))
       temp_relpp [temp_relcount++] = relpp [i];
   relcount = temp_relcount;
   free (relpp);
   relpp = temp_relpp;
 }

      bfd_set_reloc (obfd, osection, relcount == 0 ? ((void*)0) : relpp, relcount);
      if (relcount == 0)
 free (relpp);
    }

  if (extract_symbol)
    return;

  if (bfd_get_section_flags (ibfd, isection) & SEC_HAS_CONTENTS
      && bfd_get_section_flags (obfd, osection) & SEC_HAS_CONTENTS)
    {
      void *memhunk = xmalloc (size);

      if (!bfd_get_section_contents (ibfd, isection, memhunk, 0, size))
 RETURN_NONFATAL (bfd_get_filename (ibfd));

      if (reverse_bytes)
 {



   if ((size % reverse_bytes) == 0)
     {
       unsigned long i, j;
       bfd_byte b;

       for (i = 0; i < size; i += reverse_bytes)
  for (j = 0; j < (unsigned long)(reverse_bytes / 2); j++)
    {
      bfd_byte *m = (bfd_byte *) memhunk;

      b = m[i + j];
      m[i + j] = m[(i + reverse_bytes) - (j + 1)];
      m[(i + reverse_bytes) - (j + 1)] = b;
    }
     }
   else

     fatal (_("cannot reverse bytes: length of section %s must be evenly divisible by %d"),
     bfd_section_name (ibfd, isection), reverse_bytes);
 }

      if (copy_byte >= 0)
 {

   char *from = (char *) memhunk + copy_byte;
   char *to = memhunk;
   char *end = (char *) memhunk + size;

   for (; from < end; from += interleave)
     *to++ = *from;

   size = (size + interleave - 1 - copy_byte) / interleave;
   osection->lma /= interleave;
 }

      if (!bfd_set_section_contents (obfd, osection, memhunk, 0, size))
 RETURN_NONFATAL (bfd_get_filename (obfd));

      free (memhunk);
    }
  else if (p != ((void*)0) && p->set_flags && (p->flags & SEC_HAS_CONTENTS) != 0)
    {
      void *memhunk = xmalloc (size);







      memset (memhunk, 0, size);
      if (! bfd_set_section_contents (obfd, osection, memhunk, 0, size))
 RETURN_NONFATAL (bfd_get_filename (obfd));
      free (memhunk);
    }
}
