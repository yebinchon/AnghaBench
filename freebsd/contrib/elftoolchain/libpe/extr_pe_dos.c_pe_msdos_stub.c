
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int pe_stub_ex; int pe_flags; char* pe_stub; } ;
typedef int PE_DosHdr ;
typedef TYPE_1__ PE ;


 int EINVAL ;
 int LIBPE_F_LOAD_DOS_STUB ;
 int LIBPE_F_SPECIAL_FILE ;
 int assert (int) ;
 int errno ;
 int libpe_read_msdos_stub (TYPE_1__*) ;

char *
pe_msdos_stub(PE *pe, size_t *len)
{

 if (pe == ((void*)0) || len == ((void*)0)) {
  errno = EINVAL;
  return (((void*)0));
 }

 if (pe->pe_stub_ex > 0 &&
     (pe->pe_flags & LIBPE_F_LOAD_DOS_STUB) == 0) {
  assert((pe->pe_flags & LIBPE_F_SPECIAL_FILE) == 0);
  (void) libpe_read_msdos_stub(pe);
 }

 *len = sizeof(PE_DosHdr) + pe->pe_stub_ex;

 return (pe->pe_stub);
}
