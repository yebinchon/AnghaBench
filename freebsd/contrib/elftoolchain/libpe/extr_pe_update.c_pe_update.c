
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


typedef int off_t ;
struct TYPE_9__ {scalar_t__ pe_cmd; int pe_flags; scalar_t__ pe_obj; int pe_fd; } ;
typedef TYPE_1__ PE ;


 int EACCES ;
 int EINVAL ;
 int EIO ;
 int LIBPE_F_FD_DONE ;
 int LIBPE_F_SPECIAL_FILE ;
 scalar_t__ PE_C_RDWR ;
 scalar_t__ PE_C_READ ;
 scalar_t__ PE_C_WRITE ;
 scalar_t__ PE_O_PE32 ;
 scalar_t__ PE_O_PE32P ;
 int SEEK_SET ;
 int errno ;
 scalar_t__ ftruncate (int ,int) ;
 scalar_t__ libpe_resync_sections (TYPE_1__*,int) ;
 int libpe_write_coff_header (TYPE_1__*,int) ;
 int libpe_write_msdos_stub (TYPE_1__*,int) ;
 int libpe_write_pe_header (TYPE_1__*,int) ;
 int libpe_write_section_headers (TYPE_1__*,int) ;
 int libpe_write_sections (TYPE_1__*,int) ;
 scalar_t__ lseek (int ,int ,int ) ;

off_t
pe_update(PE *pe)
{
 off_t off;

 if (pe == ((void*)0)) {
  errno = EINVAL;
  return (-1);
 }

 if (pe->pe_cmd == PE_C_READ || pe->pe_flags & LIBPE_F_FD_DONE) {
  errno = EACCES;
  return (-1);
 }

 if (pe->pe_cmd == PE_C_RDWR || (pe->pe_cmd == PE_C_WRITE &&
  (pe->pe_flags & LIBPE_F_SPECIAL_FILE) == 0)) {
  if (lseek(pe->pe_fd, 0, SEEK_SET) < 0) {
   errno = EIO;
   return (-1);
  }
 }

 off = 0;

 if (pe->pe_obj == PE_O_PE32 || pe->pe_obj == PE_O_PE32P) {
  if ((off = libpe_write_msdos_stub(pe, off)) < 0)
   return (-1);

  if ((off = libpe_write_pe_header(pe, off)) < 0)
   return (-1);
 }

 if (libpe_resync_sections(pe, off) < 0)
  return (-1);

 if ((off = libpe_write_coff_header(pe, off)) < 0)
  return (-1);

 if ((off = libpe_write_section_headers(pe, off)) < 0)
  return (-1);

 if ((off = libpe_write_sections(pe, off)) < 0)
  return (-1);

 if (ftruncate(pe->pe_fd, off) < 0) {
  errno = EIO;
  return (-1);
 }

 return (off);
}
