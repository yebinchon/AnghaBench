
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {size_t st_size; } ;
struct elfcopy {int v_arobj; int rela_off; int * eout; int * ein; } ;
struct ar_obj {char* buf; size_t size; int name; int * maddr; } ;


 int ELF_C_READ ;
 int ELF_C_SET ;
 int ELF_C_WRITE ;
 int ELF_F_LAYOUT ;
 int EXIT_FAILURE ;
 int SEEK_SET ;
 int STAILQ_INSERT_TAIL (int *,struct ar_obj*,int ) ;
 scalar_t__ _ARHDR_LEN ;
 scalar_t__ _MAXNAMELEN_SVR4 ;
 int add_to_ar_str_table (struct elfcopy*,int ) ;
 int close (int) ;
 int create_elf (struct elfcopy*) ;
 int create_tempfile (char**,int*) ;
 void* elf_begin (int,int ,int *) ;
 int elf_end (int *) ;
 int elf_errmsg (int) ;
 int elf_flagelf (int *,int ,int ) ;
 int err (int ,char*,char*) ;
 int errx (int ,char*,int ) ;
 int extract_arsym (struct elfcopy*) ;
 int free (char*) ;
 int fstat (int,struct stat*) ;
 scalar_t__ lseek (int,int ,int ) ;
 int * malloc (size_t) ;
 int objs ;
 scalar_t__ read (int,int *,size_t) ;
 scalar_t__ strlen (int ) ;
 scalar_t__ unlink (char*) ;

__attribute__((used)) static void
process_ar_obj(struct elfcopy *ecp, struct ar_obj *obj)
{
 struct stat sb;
 char *tempfile;
 int fd;


 create_tempfile(&tempfile, &fd);
 if ((ecp->eout = elf_begin(fd, ELF_C_WRITE, ((void*)0))) == ((void*)0))
  errx(EXIT_FAILURE, "elf_begin() failed: %s",
      elf_errmsg(-1));
 elf_flagelf(ecp->eout, ELF_C_SET, ELF_F_LAYOUT);
 create_elf(ecp);
 elf_end(ecp->ein);
 elf_end(ecp->eout);
 free(obj->buf);
 obj->buf = ((void*)0);


 if (lseek(fd, 0, SEEK_SET) < 0)
  err(EXIT_FAILURE, "lseek failed for '%s'", tempfile);
 if ((ecp->eout = elf_begin(fd, ELF_C_READ, ((void*)0))) == ((void*)0))
  errx(EXIT_FAILURE, "elf_begin() failed: %s",
      elf_errmsg(-1));
 extract_arsym(ecp);
 elf_end(ecp->eout);

 if (fstat(fd, &sb) == -1)
  err(EXIT_FAILURE, "fstat %s failed", tempfile);
 if (lseek(fd, 0, SEEK_SET) < 0)
  err(EXIT_FAILURE, "lseek %s failed", tempfile);
 obj->size = sb.st_size;
 if ((obj->maddr = malloc(obj->size)) == ((void*)0))
  err(EXIT_FAILURE, "memory allocation failed for '%s'",
      tempfile);
 if ((size_t) read(fd, obj->maddr, obj->size) != obj->size)
  err(EXIT_FAILURE, "read failed for '%s'", tempfile);
 if (unlink(tempfile))
  err(EXIT_FAILURE, "unlink %s failed", tempfile);
 free(tempfile);
 close(fd);
 if (strlen(obj->name) > _MAXNAMELEN_SVR4)
  add_to_ar_str_table(ecp, obj->name);
 ecp->rela_off += _ARHDR_LEN + obj->size + obj->size % 2;
 STAILQ_INSERT_TAIL(&ecp->v_arobj, obj, objs);
}
