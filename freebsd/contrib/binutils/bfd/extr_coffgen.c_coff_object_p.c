
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct internal_filehdr {scalar_t__ f_opthdr; unsigned int f_nscns; } ;
struct internal_aouthdr {int dummy; } ;
typedef int bfd_target ;
typedef scalar_t__ bfd_size_type ;
typedef int bfd ;


 void* bfd_alloc (int *,scalar_t__) ;
 scalar_t__ bfd_bread (void*,scalar_t__,int *) ;
 scalar_t__ bfd_coff_aoutsz (int *) ;
 int bfd_coff_bad_format_hook (int *,struct internal_filehdr*) ;
 scalar_t__ bfd_coff_filhsz (int *) ;
 int bfd_coff_swap_aouthdr_in (int *,void*,void*) ;
 int bfd_coff_swap_filehdr_in (int *,void*,struct internal_filehdr*) ;
 scalar_t__ bfd_error_system_call ;
 int bfd_error_wrong_format ;
 scalar_t__ bfd_get_error () ;
 int bfd_release (int *,void*) ;
 int bfd_set_error (int ) ;
 int const* coff_real_object_p (int *,unsigned int,struct internal_filehdr*,struct internal_aouthdr*) ;

const bfd_target *
coff_object_p (bfd *abfd)
{
  bfd_size_type filhsz;
  bfd_size_type aoutsz;
  unsigned int nscns;
  void * filehdr;
  struct internal_filehdr internal_f;
  struct internal_aouthdr internal_a;


  filhsz = bfd_coff_filhsz (abfd);
  aoutsz = bfd_coff_aoutsz (abfd);

  filehdr = bfd_alloc (abfd, filhsz);
  if (filehdr == ((void*)0))
    return ((void*)0);
  if (bfd_bread (filehdr, filhsz, abfd) != filhsz)
    {
      if (bfd_get_error () != bfd_error_system_call)
 bfd_set_error (bfd_error_wrong_format);
      bfd_release (abfd, filehdr);
      return ((void*)0);
    }
  bfd_coff_swap_filehdr_in (abfd, filehdr, &internal_f);
  bfd_release (abfd, filehdr);
  if (! bfd_coff_bad_format_hook (abfd, &internal_f)
      || internal_f.f_opthdr > aoutsz)
    {
      bfd_set_error (bfd_error_wrong_format);
      return ((void*)0);
    }
  nscns = internal_f.f_nscns;

  if (internal_f.f_opthdr)
    {
      void * opthdr;

      opthdr = bfd_alloc (abfd, aoutsz);
      if (opthdr == ((void*)0))
 return ((void*)0);
      if (bfd_bread (opthdr, (bfd_size_type) internal_f.f_opthdr, abfd)
   != internal_f.f_opthdr)
 {
   bfd_release (abfd, opthdr);
   return ((void*)0);
 }
      bfd_coff_swap_aouthdr_in (abfd, opthdr, (void *) &internal_a);
      bfd_release (abfd, opthdr);
    }

  return coff_real_object_p (abfd, nscns, &internal_f,
        (internal_f.f_opthdr != 0
         ? &internal_a
         : (struct internal_aouthdr *) ((void*)0)));
}
