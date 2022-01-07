
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct bfd_link_info {int dummy; } ;
typedef int file_ptr ;
typedef int bfd_size_type ;
typedef int bfd_boolean ;
typedef int bfd ;
struct TYPE_7__ {int external_ext_size; } ;
struct TYPE_10__ {TYPE_2__ debug_swap; } ;
struct TYPE_8__ {int iextMax; scalar_t__ issExtMax; scalar_t__ cbSsExtOffset; scalar_t__ cbExtOffset; } ;
struct TYPE_6__ {TYPE_3__ symbolic_header; } ;
struct TYPE_9__ {TYPE_1__ debug_info; } ;
typedef TYPE_3__ HDRR ;


 int FALSE ;
 int SEEK_SET ;
 int TRUE ;
 int bfd_bread (char*,int,int *) ;
 scalar_t__ bfd_get_symcount (int *) ;
 void* bfd_malloc (int) ;
 scalar_t__ bfd_seek (int *,int ,int ) ;
 TYPE_5__* ecoff_backend (int *) ;
 TYPE_4__* ecoff_data (int *) ;
 int ecoff_link_add_externals (int *,struct bfd_link_info*,void*,char*) ;
 int ecoff_slurp_symbolic_header (int *) ;
 int free (void*) ;

__attribute__((used)) static bfd_boolean
ecoff_link_add_object_symbols (bfd *abfd, struct bfd_link_info *info)
{
  HDRR *symhdr;
  bfd_size_type external_ext_size;
  void * external_ext = ((void*)0);
  bfd_size_type esize;
  char *ssext = ((void*)0);
  bfd_boolean result;

  if (! ecoff_slurp_symbolic_header (abfd))
    return FALSE;


  if (bfd_get_symcount (abfd) == 0)
    return TRUE;

  symhdr = &ecoff_data (abfd)->debug_info.symbolic_header;


  external_ext_size = ecoff_backend (abfd)->debug_swap.external_ext_size;
  esize = symhdr->iextMax * external_ext_size;
  external_ext = bfd_malloc (esize);
  if (external_ext == ((void*)0) && esize != 0)
    goto error_return;

  if (bfd_seek (abfd, (file_ptr) symhdr->cbExtOffset, SEEK_SET) != 0
      || bfd_bread (external_ext, esize, abfd) != esize)
    goto error_return;

  ssext = bfd_malloc ((bfd_size_type) symhdr->issExtMax);
  if (ssext == ((void*)0) && symhdr->issExtMax != 0)
    goto error_return;

  if (bfd_seek (abfd, (file_ptr) symhdr->cbSsExtOffset, SEEK_SET) != 0
      || (bfd_bread (ssext, (bfd_size_type) symhdr->issExtMax, abfd)
   != (bfd_size_type) symhdr->issExtMax))
    goto error_return;

  result = ecoff_link_add_externals (abfd, info, external_ext, ssext);

  if (ssext != ((void*)0))
    free (ssext);
  if (external_ext != ((void*)0))
    free (external_ext);
  return result;

 error_return:
  if (ssext != ((void*)0))
    free (ssext);
  if (external_ext != ((void*)0))
    free (external_ext);
  return FALSE;
}
