
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned int ps_flags; } ;
typedef TYPE_1__ PE_Scn ;
typedef scalar_t__ PE_Cmd ;


 int EINVAL ;
 scalar_t__ PE_C_CLR ;
 scalar_t__ PE_C_SET ;
 unsigned int PE_F_DIRTY ;
 unsigned int PE_F_STRIP_SECTION ;
 int errno ;

int
pe_flag_scn(PE_Scn *ps, PE_Cmd c, unsigned int flags)
{

 if (ps == ((void*)0) || (c != PE_C_SET && c != PE_C_CLR) ||
     (flags & ~(PE_F_DIRTY | PE_F_STRIP_SECTION)) == 0) {
  errno = EINVAL;
  return (-1);
 }

 if (c == PE_C_SET)
  ps->ps_flags |= flags;
 else
  ps->ps_flags &= ~flags;

 return (0);
}
