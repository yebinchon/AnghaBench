
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_1__ ;


typedef int bfd_target ;
typedef int bfd_size_type ;
typedef scalar_t__ bfd_byte ;
struct TYPE_10__ {int const* xvec; } ;
typedef TYPE_1__ bfd ;


 unsigned int AMD64MAGIC ;
 unsigned int ARMPEMAGIC ;
 unsigned int H_GET_16 (TYPE_1__*,scalar_t__*) ;
 int H_GET_32 (TYPE_1__*,scalar_t__*) ;
 unsigned int I386MAGIC ;
 unsigned int MC68MAGIC ;
 unsigned int MIPS_ARCH_MAGIC_WINCE ;
 unsigned int SH_ARCH_MAGIC_WINCE ;
 unsigned int THUMBPEMAGIC ;
 int _ (char*) ;
 int _bfd_error_handler (int ,TYPE_1__*,...) ;
 scalar_t__* bfd_alloc (TYPE_1__*,int) ;
 int bfd_bread (scalar_t__*,int,TYPE_1__*) ;
 int bfd_error_malformed_archive ;
 int bfd_error_wrong_format ;
 int bfd_release (TYPE_1__*,scalar_t__*) ;
 int bfd_set_error (int ) ;
 int pe_ILF_build_a_bfd (TYPE_1__*,unsigned int,char*,char*,unsigned int,unsigned int) ;
 int strlen (char*) ;

__attribute__((used)) static const bfd_target *
pe_ILF_object_p (bfd * abfd)
{
  bfd_byte buffer[16];
  bfd_byte * ptr;
  char * symbol_name;
  char * source_dll;
  unsigned int machine;
  bfd_size_type size;
  unsigned int ordinal;
  unsigned int types;
  unsigned int magic;



  if (bfd_bread (buffer, (bfd_size_type) 16, abfd) != 16)
    return ((void*)0);

  ptr = buffer;



  ptr += 2;

  machine = H_GET_16 (abfd, ptr);
  ptr += 2;


  magic = 0;

  switch (machine)
    {
    case 128:
    case 145:
    case 144:
    case 140:
      break;

    case 141:



      break;

    case 143:



      break;

    case 139:



      break;

    case 133:
    case 132:
    case 134:

    case 138:
    case 137:
    case 136:



      break;

    case 131:
    case 130:



      break;

    case 142:



      break;

    case 129:
      break;

    case 135:

    default:
      _bfd_error_handler
 (_("%B: Unrecognised machine type (0x%x)"
    " in Import Library Format archive"),
  abfd, machine);
      bfd_set_error (bfd_error_malformed_archive);

      return ((void*)0);
      break;
    }

  if (magic == 0)
    {
      _bfd_error_handler
 (_("%B: Recognised but unhandled machine type (0x%x)"
    " in Import Library Format archive"),
  abfd, machine);
      bfd_set_error (bfd_error_wrong_format);

      return ((void*)0);
    }



  ptr += 4;

  size = H_GET_32 (abfd, ptr);
  ptr += 4;

  if (size == 0)
    {
      _bfd_error_handler
 (_("%B: size field is zero in Import Library Format header"), abfd);
      bfd_set_error (bfd_error_malformed_archive);

      return ((void*)0);
    }

  ordinal = H_GET_16 (abfd, ptr);
  ptr += 2;

  types = H_GET_16 (abfd, ptr);



  ptr = bfd_alloc (abfd, size);
  if (ptr == ((void*)0))
    return ((void*)0);

  if (bfd_bread (ptr, size, abfd) != size)
    {
      bfd_release (abfd, ptr);
      return ((void*)0);
    }

  symbol_name = (char *) ptr;
  source_dll = symbol_name + strlen (symbol_name) + 1;


  if (ptr[size - 1] != 0
      || (bfd_size_type) ((bfd_byte *) source_dll - ptr) >= size)
    {
      _bfd_error_handler
 (_("%B: string not null terminated in ILF object file."), abfd);
      bfd_set_error (bfd_error_malformed_archive);
      bfd_release (abfd, ptr);
      return ((void*)0);
    }


  if (! pe_ILF_build_a_bfd (abfd, magic, symbol_name,
       source_dll, ordinal, types))
    {
      bfd_release (abfd, ptr);
      return ((void*)0);
    }

  return abfd->xvec;
}
