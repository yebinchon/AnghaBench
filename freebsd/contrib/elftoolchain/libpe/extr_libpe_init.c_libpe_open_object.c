
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct stat {scalar_t__ st_size; int st_mode; } ;
typedef int ssize_t ;
typedef int mode_t ;
struct TYPE_5__ {size_t pe_fsize; scalar_t__ pe_cmd; int pe_fd; void* pe_obj; } ;
typedef int PE_DosHdr ;
typedef int PE_CoffHdr ;
typedef TYPE_1__ PE ;


 int EINVAL ;
 int EIO ;
 int ENOENT ;
 scalar_t__ PE_C_RDWR ;
 void* PE_O_COFF ;
 void* PE_O_PE32 ;
 int S_ISCHR (int ) ;
 int S_ISFIFO (int ) ;
 scalar_t__ S_ISREG (int ) ;
 int S_ISSOCK (int ) ;
 int errno ;
 scalar_t__ fstat (int ,struct stat*) ;
 int libpe_parse_coff_header (TYPE_1__*,char*) ;
 int libpe_parse_msdos_header (TYPE_1__*,char*) ;
 int read (int ,char*,int) ;

int
libpe_open_object(PE *pe)
{
 struct stat sb;
 mode_t mode;
 char magic[sizeof(PE_DosHdr)];

 if (fstat(pe->pe_fd, &sb) < 0)
  return (-1);

 mode = sb.st_mode;
 pe->pe_fsize = (size_t) sb.st_size;


 if (!S_ISREG(mode) && !S_ISCHR(mode) && !S_ISFIFO(mode) &&
     !S_ISSOCK(mode)) {
  errno = EINVAL;
  return (-1);
 }


 if (pe->pe_cmd == PE_C_RDWR && !S_ISREG(mode)) {
  errno = EINVAL;
  return (-1);
 }


 if (S_ISREG(mode) && pe->pe_fsize < sizeof(PE_CoffHdr)) {
  errno = ENOENT;
  return (-1);
 }





 if (read(pe->pe_fd, magic, 2) != 2) {
  errno = EIO;
  return (-1);
 }

 if (magic[0] == 'M' && magic[1] == 'Z') {
  pe->pe_obj = PE_O_PE32;
  if (read(pe->pe_fd, &magic[2], sizeof(PE_DosHdr) - 2) !=
      (ssize_t) sizeof(PE_DosHdr) - 2) {
   errno = EIO;
   return (-1);
  }
  return (libpe_parse_msdos_header(pe, magic));

 } else if (magic[0] == 'P' && magic[1] == 'E') {
  if (read(pe->pe_fd, magic, 2) != 2) {
   errno = EIO;
   return (-1);
  }
  if (magic[0] == '\0' && magic[1] == '\0') {
   pe->pe_obj = PE_O_PE32;
   if (read(pe->pe_fd, magic, sizeof(PE_CoffHdr)) !=
       (ssize_t) sizeof(PE_CoffHdr)) {
    errno = EIO;
    return (-1);
   }
   return (libpe_parse_coff_header(pe, magic));
  }
  errno = ENOENT;
  return (-1);

 } else {
  pe->pe_obj = PE_O_COFF;
  if (read(pe->pe_fd, &magic[2], sizeof(PE_CoffHdr) - 2) !=
      (ssize_t) sizeof(PE_CoffHdr) - 2) {
   errno = EIO;
   return (-1);
  }
  return (libpe_parse_coff_header(pe, magic));
 }
}
