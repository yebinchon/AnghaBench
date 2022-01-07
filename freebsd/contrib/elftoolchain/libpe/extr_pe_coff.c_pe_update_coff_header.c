
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ pe_cmd; int pe_flags; TYPE_1__* pe_ch; } ;
struct TYPE_6__ {scalar_t__ ch_optsize; } ;
typedef TYPE_1__ PE_CoffHdr ;
typedef TYPE_2__ PE ;


 int EACCES ;
 int EINVAL ;
 int ENOMEM ;
 int LIBPE_F_DIRTY_COFF_HEADER ;
 int LIBPE_F_DIRTY_OPT_HEADER ;
 int LIBPE_F_FD_DONE ;
 scalar_t__ PE_C_READ ;
 int errno ;
 TYPE_1__* malloc (int) ;

int
pe_update_coff_header(PE *pe, PE_CoffHdr *ch)
{

 if (pe == ((void*)0) || ch == ((void*)0)) {
  errno = EINVAL;
  return (-1);
 }

 if (pe->pe_cmd == PE_C_READ || pe->pe_flags & LIBPE_F_FD_DONE) {
  errno = EACCES;
  return (-1);
 }

 if (pe->pe_ch == ((void*)0)) {
  if ((pe->pe_ch = malloc(sizeof(PE_CoffHdr))) == ((void*)0)) {
   errno = ENOMEM;
   return (-1);
  }
 } else {

  if (pe->pe_ch->ch_optsize != ch->ch_optsize)
   pe->pe_flags |= LIBPE_F_DIRTY_OPT_HEADER;
 }

 *pe->pe_ch = *ch;

 pe->pe_flags |= LIBPE_F_DIRTY_COFF_HEADER;

 return (0);
}
