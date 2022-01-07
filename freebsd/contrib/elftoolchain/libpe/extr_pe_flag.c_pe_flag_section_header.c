
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int pe_flags; } ;
struct TYPE_4__ {TYPE_2__* ps_pe; } ;
typedef TYPE_1__ PE_Scn ;
typedef scalar_t__ PE_Cmd ;
typedef TYPE_2__ PE ;


 int EINVAL ;
 int LIBPE_F_DIRTY_SEC_HEADER ;
 scalar_t__ PE_C_CLR ;
 scalar_t__ PE_C_SET ;
 unsigned int PE_F_DIRTY ;
 int errno ;

int
pe_flag_section_header(PE_Scn *ps, PE_Cmd c, unsigned int flags)
{
 PE *pe;

 if (ps == ((void*)0) || (c != PE_C_SET && c != PE_C_CLR) ||
     (flags & ~PE_F_DIRTY) != 0) {
  errno = EINVAL;
  return (-1);
 }

 pe = ps->ps_pe;


 if (c == PE_C_SET)
  pe->pe_flags |= LIBPE_F_DIRTY_SEC_HEADER;
 else
  pe->pe_flags &= ~LIBPE_F_DIRTY_SEC_HEADER;

 return (0);
}
