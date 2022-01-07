
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ pe_stub_ex; int pe_flags; int * pe_rh; } ;
typedef int PE_RichHdr ;
typedef TYPE_1__ PE ;


 int EINVAL ;
 int ENOENT ;
 int LIBPE_F_LOAD_DOS_STUB ;
 int LIBPE_F_SPECIAL_FILE ;
 int assert (int) ;
 int errno ;
 int libpe_read_msdos_stub (TYPE_1__*) ;

PE_RichHdr *
pe_rich_header(PE *pe)
{

 if (pe == ((void*)0)) {
  errno = EINVAL;
  return (((void*)0));
 }

 if (pe->pe_rh == ((void*)0) && pe->pe_stub_ex > 0 &&
     (pe->pe_flags & LIBPE_F_LOAD_DOS_STUB) == 0) {
  assert((pe->pe_flags & LIBPE_F_SPECIAL_FILE) == 0);
  (void) libpe_read_msdos_stub(pe);
 }

 if (pe->pe_rh == ((void*)0)) {
  errno = ENOENT;
  return (((void*)0));
 }

 return (pe->pe_rh);
}
