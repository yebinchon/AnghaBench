
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct stat {scalar_t__ st_size; int st_mode; } ;
typedef scalar_t__ ssize_t ;
typedef int off_t ;
typedef int mode_t ;
struct TYPE_7__ {int e_fd; unsigned int e_flags; scalar_t__ e_kind; scalar_t__ e_cmd; int e_byteorder; } ;
typedef scalar_t__ Elf_Cmd ;
typedef TYPE_1__ Elf ;


 int ARGUMENT ;
 scalar_t__ ELF_C_RDWR ;
 scalar_t__ ELF_C_READ ;
 scalar_t__ ELF_C_WRITE ;
 scalar_t__ ELF_K_AR ;
 int ELF_K_ELF ;
 int IO ;
 unsigned int LIBELF_F_RAWFILE_MALLOC ;
 unsigned int LIBELF_F_RAWFILE_MMAP ;
 unsigned int LIBELF_F_SPECIAL_FILE ;
 int LIBELF_PRIVATE (int ) ;
 int LIBELF_SET_ERROR (int ,int ) ;
 void* MAP_FAILED ;
 int MAP_PRIVATE ;
 int PROT_READ ;
 int RESOURCE ;
 int S_ISCHR (int ) ;
 int S_ISFIFO (int ) ;
 scalar_t__ S_ISREG (int ) ;
 int S_ISSOCK (int ) ;
 TYPE_1__* _libelf_allocate_elf () ;
 int _libelf_init_elf (TYPE_1__*,int ) ;
 TYPE_1__* _libelf_memory (void*,size_t,int) ;
 void* _libelf_read_special_file (int,size_t*) ;
 int assert (int) ;
 int byteorder ;
 int elf_end (TYPE_1__*) ;
 int errno ;
 int free (void*) ;
 scalar_t__ fstat (int,struct stat*) ;
 void* malloc (size_t) ;
 void* mmap (int *,size_t,int ,int ,int,int ) ;
 int munmap (void*,size_t) ;
 scalar_t__ read (int,void*,size_t) ;

Elf *
_libelf_open_object(int fd, Elf_Cmd c, int reporterror)
{
 Elf *e;
 void *m;
 mode_t mode;
 size_t fsize;
 struct stat sb;
 unsigned int flags;

 assert(c == ELF_C_READ || c == ELF_C_RDWR || c == ELF_C_WRITE);

 if (fstat(fd, &sb) < 0) {
  LIBELF_SET_ERROR(IO, errno);
  return (((void*)0));
 }

 mode = sb.st_mode;
 fsize = (size_t) sb.st_size;




 if (!S_ISREG(mode) && !S_ISCHR(mode) && !S_ISFIFO(mode) &&
     !S_ISSOCK(mode)) {
  LIBELF_SET_ERROR(ARGUMENT, 0);
  return (((void*)0));
 }




 if (c == ELF_C_WRITE) {
  if ((e = _libelf_allocate_elf()) != ((void*)0)) {
   _libelf_init_elf(e, ELF_K_ELF);
   e->e_byteorder = LIBELF_PRIVATE(byteorder);
   e->e_fd = fd;
   e->e_cmd = c;
   if (!S_ISREG(mode))
    e->e_flags |= LIBELF_F_SPECIAL_FILE;
  }

  return (e);
 }





 m = ((void*)0);
 flags = 0;
 if (S_ISREG(mode)) {




  if (fsize == 0) {
   LIBELF_SET_ERROR(ARGUMENT, 0);
   return (((void*)0));
  }
  if (m == ((void*)0)) {
   if ((m = malloc(fsize)) == ((void*)0)) {
    LIBELF_SET_ERROR(RESOURCE, 0);
    return (((void*)0));
   }

   if (read(fd, m, fsize) != (ssize_t) fsize) {
    LIBELF_SET_ERROR(IO, errno);
    free(m);
    return (((void*)0));
   }

   flags = LIBELF_F_RAWFILE_MALLOC;
  }
 } else if ((m = _libelf_read_special_file(fd, &fsize)) != ((void*)0))
  flags = LIBELF_F_RAWFILE_MALLOC | LIBELF_F_SPECIAL_FILE;
 else
  return (((void*)0));

 if ((e = _libelf_memory(m, fsize, reporterror)) == ((void*)0)) {
  assert((flags & LIBELF_F_RAWFILE_MALLOC) ||
      (flags & LIBELF_F_RAWFILE_MMAP));
  if (flags & LIBELF_F_RAWFILE_MALLOC)
   free(m);




  return (((void*)0));
 }


 if (c == ELF_C_RDWR && e->e_kind == ELF_K_AR) {
  (void) elf_end(e);
  LIBELF_SET_ERROR(ARGUMENT, 0);
  return (((void*)0));
 }

 e->e_flags |= flags;
 e->e_fd = fd;
 e->e_cmd = c;

 return (e);
}
