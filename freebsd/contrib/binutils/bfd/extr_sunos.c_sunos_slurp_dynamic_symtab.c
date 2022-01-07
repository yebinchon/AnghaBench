
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ld_symb_size; scalar_t__ ld_symbols; scalar_t__ ld_stab; } ;
struct sunos_dynamic_info {scalar_t__ dynsym_count; int * dynstr; TYPE_1__ dyninfo; int * dynsym; int valid; } ;
typedef int file_ptr ;
typedef int bfd_size_type ;
typedef int bfd_boolean ;
typedef int bfd ;


 int EXTERNAL_NLIST_SIZE ;
 int FALSE ;
 int SEEK_SET ;
 int TRUE ;
 void* bfd_alloc (int *,int) ;
 int bfd_bread (void*,int,int *) ;
 int bfd_error_no_symbols ;
 int bfd_release (int *,int *) ;
 scalar_t__ bfd_seek (int *,int ,int ) ;
 int bfd_set_error (int ) ;
 int * obj_aout_dynamic_info (int *) ;
 int sunos_read_dynamic_info (int *) ;

__attribute__((used)) static bfd_boolean
sunos_slurp_dynamic_symtab (bfd *abfd)
{
  struct sunos_dynamic_info *info;
  bfd_size_type amt;


  if (obj_aout_dynamic_info (abfd) == ((void*)0))
    {
      if (! sunos_read_dynamic_info (abfd))
   return FALSE;
    }

  info = (struct sunos_dynamic_info *) obj_aout_dynamic_info (abfd);
  if (! info->valid)
    {
      bfd_set_error (bfd_error_no_symbols);
      return FALSE;
    }


  if (info->dynsym == ((void*)0))
    {
      amt = (bfd_size_type) info->dynsym_count * EXTERNAL_NLIST_SIZE;
      info->dynsym = bfd_alloc (abfd, amt);
      if (info->dynsym == ((void*)0) && info->dynsym_count != 0)
 return FALSE;
      if (bfd_seek (abfd, (file_ptr) info->dyninfo.ld_stab, SEEK_SET) != 0
   || bfd_bread ((void *) info->dynsym, amt, abfd) != amt)
 {
   if (info->dynsym != ((void*)0))
     {
       bfd_release (abfd, info->dynsym);
       info->dynsym = ((void*)0);
     }
   return FALSE;
 }
    }


  if (info->dynstr == ((void*)0))
    {
      amt = info->dyninfo.ld_symb_size;
      info->dynstr = bfd_alloc (abfd, amt);
      if (info->dynstr == ((void*)0) && info->dyninfo.ld_symb_size != 0)
 return FALSE;
      if (bfd_seek (abfd, (file_ptr) info->dyninfo.ld_symbols, SEEK_SET) != 0
   || bfd_bread ((void *) info->dynstr, amt, abfd) != amt)
 {
   if (info->dynstr != ((void*)0))
     {
       bfd_release (abfd, info->dynstr);
       info->dynstr = ((void*)0);
     }
   return FALSE;
 }
    }

  return TRUE;
}
