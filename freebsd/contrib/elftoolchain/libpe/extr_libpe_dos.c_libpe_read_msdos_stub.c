
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ ssize_t ;
typedef int off_t ;
struct TYPE_4__ {scalar_t__ pe_stub_ex; int pe_flags; void* pe_stub; int pe_fd; } ;
typedef int PE_DosHdr ;
typedef TYPE_1__ PE ;


 int EIO ;
 int ENOMEM ;
 int LIBPE_F_LOAD_DOS_STUB ;
 int LIBPE_F_SPECIAL_FILE ;
 int SEEK_SET ;
 int assert (int) ;
 int errno ;
 int libpe_parse_rich_header (TYPE_1__*) ;
 scalar_t__ lseek (int ,int ,int ) ;
 scalar_t__ read (int ,void*,scalar_t__) ;
 void* realloc (void*,scalar_t__) ;

int
libpe_read_msdos_stub(PE *pe)
{
 void *m;

 assert(pe->pe_stub_ex > 0 &&
     (pe->pe_flags & LIBPE_F_LOAD_DOS_STUB) == 0);

 if ((pe->pe_flags & LIBPE_F_SPECIAL_FILE) == 0) {
  if (lseek(pe->pe_fd, (off_t) sizeof(PE_DosHdr), SEEK_SET) <
      0) {
   errno = EIO;
   goto fail;
  }
 }

 if ((m = realloc(pe->pe_stub, sizeof(PE_DosHdr) + pe->pe_stub_ex)) ==
     ((void*)0)) {
  errno = ENOMEM;
  goto fail;
 }
 pe->pe_stub = m;

 if (read(pe->pe_fd, pe->pe_stub + sizeof(PE_DosHdr), pe->pe_stub_ex) !=
     (ssize_t) pe->pe_stub_ex) {
  errno = EIO;
  goto fail;
 }

 pe->pe_flags |= LIBPE_F_LOAD_DOS_STUB;


 (void) libpe_parse_rich_header(pe);

 return (0);

fail:
 pe->pe_stub_ex = 0;

 return (-1);
}
