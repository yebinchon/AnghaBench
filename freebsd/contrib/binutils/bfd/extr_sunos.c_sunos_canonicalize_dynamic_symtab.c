
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ ld_buckets; scalar_t__ ld_stab; scalar_t__ ld_hash; scalar_t__ ld_symb_size; } ;
struct sunos_dynamic_info {scalar_t__ dynsym_count; int * canonical_dynsym; scalar_t__ dynstr; TYPE_2__* dynsym; TYPE_1__ dyninfo; } ;
typedef int file_ptr ;
typedef scalar_t__ bfd_size_type ;
typedef int bfd_byte ;
typedef int bfd ;
typedef int asymbol ;
typedef int aout_symbol_type ;
struct TYPE_4__ {int * e_strx; } ;


 int BYTES_IN_WORD ;
 scalar_t__ GET_WORD (int *,int *) ;
 unsigned long HASH_ENTRY_SIZE ;
 int SEEK_SET ;
 int TRUE ;
 int abort () ;
 int aout_32_translate_symbol_table (int *,int *,TYPE_2__*,scalar_t__,scalar_t__,scalar_t__,int ) ;
 int * bfd_alloc (int *,scalar_t__) ;
 scalar_t__ bfd_bread (void*,scalar_t__,int *) ;
 int * bfd_malloc (scalar_t__) ;
 int bfd_release (int *,int *) ;
 scalar_t__ bfd_seek (int *,int ,int ) ;
 int free (int *) ;
 scalar_t__ obj_aout_dynamic_info (int *) ;
 int sunos_slurp_dynamic_symtab (int *) ;

__attribute__((used)) static long
sunos_canonicalize_dynamic_symtab (bfd *abfd, asymbol **storage)
{
  struct sunos_dynamic_info *info;
  unsigned long i;

  if (! sunos_slurp_dynamic_symtab (abfd))
    return -1;

  info = (struct sunos_dynamic_info *) obj_aout_dynamic_info (abfd);
  if (info->canonical_dynsym == ((void*)0))
    {
      bfd_size_type size;
      bfd_size_type strsize = info->dyninfo.ld_symb_size;

      size = (bfd_size_type) info->dynsym_count * sizeof (aout_symbol_type);
      info->canonical_dynsym = bfd_alloc (abfd, size);
      if (info->canonical_dynsym == ((void*)0) && info->dynsym_count != 0)
 return -1;

      if (! aout_32_translate_symbol_table (abfd, info->canonical_dynsym,
         info->dynsym,
         (bfd_size_type) info->dynsym_count,
         info->dynstr, strsize, TRUE))
 {
   if (info->canonical_dynsym != ((void*)0))
     {
       bfd_release (abfd, info->canonical_dynsym);
       info->canonical_dynsym = ((void*)0);
     }
   return -1;
 }
    }


  for (i = 0; i < info->dynsym_count; i++)
    *storage++ = (asymbol *) (info->canonical_dynsym + i);
  *storage = ((void*)0);

  return info->dynsym_count;
}
