
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int pe_cmd; int pe_flags; } ;
typedef int PE_Cmd ;
typedef TYPE_1__ PE ;


 int EACCES ;
 int EINVAL ;
 int LIBPE_F_FD_DONE ;


 int PE_C_WRITE ;
 int errno ;
 int libpe_load_all_sections (TYPE_1__*) ;

int
pe_cntl(PE *pe, PE_Cmd cmd)
{

 if (pe == ((void*)0)) {
  errno = EINVAL;
  return (-1);
 }

 switch (cmd) {
 case 129:
  pe->pe_flags |= LIBPE_F_FD_DONE;
  break;

 case 128:
  if (pe->pe_cmd == PE_C_WRITE) {
   errno = EACCES;
   return (-1);
  }
  if (libpe_load_all_sections(pe) < 0)
   return (-1);
  break;

 default:
  errno = EINVAL;
  return (-1);
 }

 return (0);
}
