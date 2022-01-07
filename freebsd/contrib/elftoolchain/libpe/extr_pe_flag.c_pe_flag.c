
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned int pe_flags; } ;
typedef scalar_t__ PE_Cmd ;
typedef TYPE_1__ PE ;


 int EINVAL ;
 scalar_t__ PE_C_CLR ;
 scalar_t__ PE_C_SET ;
 unsigned int PE_F_STRIP_DEBUG ;
 unsigned int PE_F_STRIP_DOS_STUB ;
 unsigned int PE_F_STRIP_RICH_HEADER ;
 unsigned int PE_F_STRIP_SYMTAB ;
 int errno ;

int
pe_flag(PE *pe, PE_Cmd c, unsigned int flags)
{

 if (pe == ((void*)0) || (c != PE_C_SET && c != PE_C_CLR)) {
  errno = EINVAL;
  return (-1);
 }

 if ((flags & ~(PE_F_STRIP_DOS_STUB | PE_F_STRIP_RICH_HEADER |
     PE_F_STRIP_SYMTAB | PE_F_STRIP_DEBUG)) != 0) {
  errno = EINVAL;
  return (-1);
 }

 if (c == PE_C_SET)
  pe->pe_flags |= flags;
 else
  pe->pe_flags &= ~flags;

 return (0);
}
