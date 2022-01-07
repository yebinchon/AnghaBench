
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_9__ ;
typedef struct TYPE_14__ TYPE_8__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct ecoff_debug_swap {unsigned int external_rfd_size; unsigned int external_sym_size; int (* swap_sym_in ) (int *,char*,TYPE_2__*) ;int (* swap_rfd_in ) (int *,char*,int*) ;} ;
struct TYPE_10__ {scalar_t__ iextMax; } ;
struct ecoff_debug_info {char* ss; TYPE_1__ symbolic_header; scalar_t__ external_sym; TYPE_4__* fdr; int * external_rfd; } ;
typedef int bfd ;
struct TYPE_15__ {struct ecoff_debug_swap debug_swap; } ;
struct TYPE_14__ {struct ecoff_debug_info debug_info; } ;
struct TYPE_13__ {unsigned int rfdBase; int issBase; scalar_t__ isymBase; } ;
struct TYPE_12__ {unsigned int rfd; unsigned int index; } ;
struct TYPE_11__ {int iss; } ;
typedef TYPE_2__ SYMR ;
typedef TYPE_3__ RNDXR ;
typedef int RFDT ;
typedef TYPE_4__ FDR ;


 TYPE_9__* ecoff_backend (int *) ;
 TYPE_8__* ecoff_data (int *) ;
 unsigned int indexNil ;
 int sprintf (char*,char*,char const*,char const*,unsigned int,scalar_t__) ;
 int stub1 (int *,char*,int*) ;
 int stub2 (int *,char*,TYPE_2__*) ;

__attribute__((used)) static void
ecoff_emit_aggregate (bfd *abfd,
        FDR *fdr,
        char *string,
        RNDXR *rndx,
        long isym,
        const char *which)
{
  const struct ecoff_debug_swap * const debug_swap =
    &ecoff_backend (abfd)->debug_swap;
  struct ecoff_debug_info * const debug_info = &ecoff_data (abfd)->debug_info;
  unsigned int ifd = rndx->rfd;
  unsigned int indx = rndx->index;
  const char *name;

  if (ifd == 0xfff)
    ifd = isym;



  if (ifd == 0xffffffff
      || (rndx->rfd == 0xfff && indx == 0))
    name = "<undefined>";
  else if (indx == indexNil)
    name = "<no name>";
  else
    {
      SYMR sym;

      if (debug_info->external_rfd == ((void*)0))
 fdr = debug_info->fdr + ifd;
      else
 {
   RFDT rfd;

   (*debug_swap->swap_rfd_in) (abfd,
          ((char *) debug_info->external_rfd
           + ((fdr->rfdBase + ifd)
       * debug_swap->external_rfd_size)),
          &rfd);
   fdr = debug_info->fdr + rfd;
 }

      indx += fdr->isymBase;

      (*debug_swap->swap_sym_in) (abfd,
      ((char *) debug_info->external_sym
       + indx * debug_swap->external_sym_size),
      &sym);

      name = debug_info->ss + fdr->issBase + sym.iss;
    }

  sprintf (string,
    "%s %s { ifd = %u, index = %lu }",
    which, name, ifd,
    ((long) indx
     + debug_info->symbolic_header.iextMax));
}
