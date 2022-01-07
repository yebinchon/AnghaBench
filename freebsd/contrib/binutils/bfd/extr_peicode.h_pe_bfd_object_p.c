
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_3__ ;
typedef struct TYPE_22__ TYPE_2__ ;
typedef struct TYPE_21__ TYPE_1__ ;


struct internal_extra_pe_aouthdr {scalar_t__ Subsystem; } ;
struct external_PEI_IMAGE_hdr {struct external_PEI_IMAGE_hdr* nt_signature; struct external_PEI_IMAGE_hdr* e_lfanew; int e_magic; } ;
struct external_PEI_DOS_hdr {struct external_PEI_DOS_hdr* nt_signature; struct external_PEI_DOS_hdr* e_lfanew; int e_magic; } ;
struct TYPE_21__ {struct internal_extra_pe_aouthdr pe_opthdr; } ;
typedef TYPE_1__ pe_data_type ;
typedef int image_hdr ;
typedef int file_ptr ;
typedef enum arch_type { ____Placeholder_arch_type } arch_type ;
typedef int dos_hdr ;
struct TYPE_22__ {scalar_t__ flavour; } ;
typedef TYPE_2__ bfd_target ;
typedef int bfd_size_type ;
typedef struct external_PEI_IMAGE_hdr bfd_byte ;
typedef int bfd_boolean ;
struct TYPE_23__ {TYPE_2__ const* const xvec; } ;
typedef TYPE_3__ bfd ;


 scalar_t__ DOSMAGIC ;
 scalar_t__ H_GET_16 (TYPE_3__*,int ) ;
 int H_GET_32 (TYPE_3__*,struct external_PEI_IMAGE_hdr*) ;
 scalar_t__ IMAGE_SUBSYSTEM_EFI_APPLICATION ;
 int SEEK_SET ;
 int bfd_bread (struct external_PEI_IMAGE_hdr*,int ,TYPE_3__*) ;
 scalar_t__ bfd_error_system_call ;
 int bfd_error_wrong_format ;
 scalar_t__ bfd_get_error () ;
 scalar_t__ bfd_seek (TYPE_3__*,int,int ) ;
 int bfd_set_error (int ) ;
 scalar_t__ bfd_target_coff_flavour ;
 int bfd_target_efi_arch (TYPE_2__ const* const) ;
 scalar_t__ bfd_target_efi_p (TYPE_2__ const* const) ;
 int bfd_target_pei_arch (TYPE_2__ const* const) ;
 scalar_t__ bfd_target_pei_p (TYPE_2__ const* const) ;
 TYPE_2__** bfd_target_vector ;
 TYPE_2__* coff_object_p (TYPE_3__*) ;
 TYPE_2__ const* pe_ILF_object_p (TYPE_3__*) ;
 int pe_arch (int ) ;
 TYPE_1__* pe_data (TYPE_3__*) ;

__attribute__((used)) static const bfd_target *
pe_bfd_object_p (bfd * abfd)
{
  bfd_byte buffer[4];
  struct external_PEI_DOS_hdr dos_hdr;
  struct external_PEI_IMAGE_hdr image_hdr;
  file_ptr offset;
  const bfd_target *target;


  if (bfd_seek (abfd, (file_ptr) 0, SEEK_SET) != 0
      || bfd_bread (buffer, (bfd_size_type) 4, abfd) != 4)
    {
      if (bfd_get_error () != bfd_error_system_call)
 bfd_set_error (bfd_error_wrong_format);
      return ((void*)0);
    }

  if (H_GET_32 (abfd, buffer) == 0xffff0000)
    return pe_ILF_object_p (abfd);

  if (bfd_seek (abfd, (file_ptr) 0, SEEK_SET) != 0
      || bfd_bread (&dos_hdr, (bfd_size_type) sizeof (dos_hdr), abfd)
  != sizeof (dos_hdr))
    {
      if (bfd_get_error () != bfd_error_system_call)
 bfd_set_error (bfd_error_wrong_format);
      return ((void*)0);
    }
  if (H_GET_16 (abfd, dos_hdr.e_magic) != DOSMAGIC)
    {
      bfd_set_error (bfd_error_wrong_format);
      return ((void*)0);
    }

  offset = H_GET_32 (abfd, dos_hdr.e_lfanew);
  if (bfd_seek (abfd, offset, SEEK_SET) != 0
      || (bfd_bread (&image_hdr, (bfd_size_type) sizeof (image_hdr), abfd)
   != sizeof (image_hdr)))
    {
      if (bfd_get_error () != bfd_error_system_call)
 bfd_set_error (bfd_error_wrong_format);
      return ((void*)0);
    }

  if (H_GET_32 (abfd, image_hdr.nt_signature) != 0x4550)
    {
      bfd_set_error (bfd_error_wrong_format);
      return ((void*)0);
    }




  if (bfd_seek (abfd, (file_ptr) (offset - sizeof (dos_hdr)), SEEK_SET) != 0)
    {
      if (bfd_get_error () != bfd_error_system_call)
 bfd_set_error (bfd_error_wrong_format);
      return ((void*)0);
    }

  target = coff_object_p (abfd);
  if (target)
    {
      pe_data_type *pe = pe_data (abfd);
      struct internal_extra_pe_aouthdr *i = &pe->pe_opthdr;
      bfd_boolean efi = i->Subsystem == IMAGE_SUBSYSTEM_EFI_APPLICATION;
      enum arch_type arch;
      const bfd_target * const *target_ptr;


      if (bfd_target_efi_p (abfd->xvec))
 arch = pe_arch (bfd_target_efi_arch (abfd->xvec));
      else
 arch = pe_arch (bfd_target_pei_arch (abfd->xvec));

      for (target_ptr = bfd_target_vector; *target_ptr != ((void*)0);
    target_ptr++)
 {
   if (*target_ptr == target
       || (*target_ptr)->flavour != bfd_target_coff_flavour)
     continue;

   if (bfd_target_efi_p (*target_ptr))
     {

       if (pe_arch (bfd_target_efi_arch (*target_ptr)) != arch)
  continue;

  if (efi)
    {


      bfd_set_error (bfd_error_wrong_format);
      return ((void*)0);
    }
     }
   else if (bfd_target_pei_p (*target_ptr))
     {

       if (pe_arch (bfd_target_pei_arch (*target_ptr)) != arch)
  continue;

  if (!efi)
    {


      bfd_set_error (bfd_error_wrong_format);
      return ((void*)0);
    }
     }
 }
    }

  return target;
}
