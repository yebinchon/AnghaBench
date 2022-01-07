
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int pe_flags; } ;
typedef scalar_t__ PE_Cmd ;
typedef TYPE_1__ PE ;


 int EINVAL ;
 int LIBPE_F_DIRTY_OPT_HEADER ;
 scalar_t__ PE_C_CLR ;
 scalar_t__ PE_C_SET ;
 unsigned int PE_F_DIRTY ;
 int errno ;

int
pe_flag_opt_header(PE *pe, PE_Cmd c, unsigned int flags)
{

 if (pe == ((void*)0) || (c != PE_C_SET && c != PE_C_CLR) ||
     (flags & ~PE_F_DIRTY) != 0) {
  errno = EINVAL;
  return (-1);
 }

 if (c == PE_C_SET)
  pe->pe_flags |= LIBPE_F_DIRTY_OPT_HEADER;
 else
  pe->pe_flags &= ~LIBPE_F_DIRTY_OPT_HEADER;

 return (0);
}
