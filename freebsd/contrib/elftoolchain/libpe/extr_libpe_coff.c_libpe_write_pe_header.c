
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int tmp ;
typedef scalar_t__ ssize_t ;
typedef int off_t ;
struct TYPE_6__ {scalar_t__ pe_cmd; int pe_flags; int pe_fd; TYPE_1__* pe_dh; } ;
struct TYPE_5__ {scalar_t__ dh_lfanew; } ;
typedef TYPE_2__ PE ;


 int EIO ;
 int LIBPE_F_BAD_PE_HEADER ;
 int LIBPE_F_DIRTY_COFF_HEADER ;
 int LIBPE_F_DIRTY_OPT_HEADER ;
 scalar_t__ PE_C_RDWR ;
 int PE_SIGNATURE ;
 int SEEK_SET ;
 int assert (int ) ;
 int errno ;
 int le32enc (char*,int ) ;
 int libpe_align (TYPE_2__*,int,int) ;
 int lseek (int ,int,int ) ;
 scalar_t__ write (int ,char*,int) ;

off_t
libpe_write_pe_header(PE *pe, off_t off)
{
 char tmp[4];

 if (pe->pe_cmd == PE_C_RDWR &&
     (pe->pe_flags & LIBPE_F_BAD_PE_HEADER) == 0) {
  assert(pe->pe_dh != ((void*)0));
  off = lseek(pe->pe_fd, (off_t) pe->pe_dh->dh_lfanew + 4,
      SEEK_SET);
  return (off);
 }





 if ((off = libpe_align(pe, off, 8)) < 0)
  return (-1);

 le32enc(tmp, PE_SIGNATURE);
 if (write(pe->pe_fd, tmp, sizeof(tmp)) != (ssize_t) sizeof(tmp)) {
  errno = EIO;
  return (-1);
 }

 off += 4;

 pe->pe_flags &= ~LIBPE_F_BAD_PE_HEADER;


 pe->pe_flags |= LIBPE_F_DIRTY_COFF_HEADER;
 pe->pe_flags |= LIBPE_F_DIRTY_OPT_HEADER;

 return (off);
}
