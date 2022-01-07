
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ pe_cmd; int pe_flags; char* pe_stub_app; size_t pe_stub_app_sz; } ;
typedef TYPE_1__ PE ;


 int EACCES ;
 int EINVAL ;
 int LIBPE_F_FD_DONE ;
 scalar_t__ PE_C_READ ;
 int errno ;

int
ps_update_msdos_stub(PE *pe, char *dos_stub, size_t sz)
{

 if (pe == ((void*)0) || dos_stub == ((void*)0) || sz == 0) {
  errno = EINVAL;
  return (-1);
 }

 if (pe->pe_cmd == PE_C_READ || pe->pe_flags & LIBPE_F_FD_DONE) {
  errno = EACCES;
  return (-1);
 }

 pe->pe_stub_app = dos_stub;
 pe->pe_stub_app_sz = sz;

 return (0);
}
