
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ pe_cmd; int pe_flags; int * pe_dh; } ;
typedef int PE_DosHdr ;
typedef TYPE_1__ PE ;


 int EACCES ;
 int EINVAL ;
 int ENOMEM ;
 int LIBPE_F_DIRTY_DOS_HEADER ;
 int LIBPE_F_FD_DONE ;
 scalar_t__ PE_C_READ ;
 int errno ;
 int * malloc (int) ;

int
ps_update_msdos_header(PE *pe, PE_DosHdr *dh)
{

 if (pe == ((void*)0) || dh == ((void*)0)) {
  errno = EINVAL;
  return (-1);
 }

 if (pe->pe_cmd == PE_C_READ || pe->pe_flags & LIBPE_F_FD_DONE) {
  errno = EACCES;
  return (-1);
 }

 if (pe->pe_dh == ((void*)0)) {
  if ((pe->pe_dh = malloc(sizeof(PE_DosHdr))) == ((void*)0)) {
   errno = ENOMEM;
   return (-1);
  }
 }

 *pe->pe_dh = *dh;

 pe->pe_flags |= LIBPE_F_DIRTY_DOS_HEADER;

 return (0);
}
