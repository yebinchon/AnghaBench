
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct stat {int st_size; } ;
struct TYPE_6__ {scalar_t__ e_shnum; scalar_t__ e_type; } ;
struct TYPE_5__ {scalar_t__ sh_type; int sh_flags; int sh_size; int sh_offset; } ;
typedef TYPE_1__ GElf_Shdr ;
typedef TYPE_2__ GElf_Ehdr ;
typedef int FILE ;
typedef int Elf_Scn ;
typedef int Elf ;


 int ELF_C_READ ;
 scalar_t__ ELF_K_ELF ;
 scalar_t__ ET_CORE ;
 int SEEK_SET ;
 int SHF_ALLOC ;
 scalar_t__ SHT_NOBITS ;
 int * elf_begin (int,int ,int *) ;
 int elf_end (int *) ;
 scalar_t__ elf_kind (int *) ;
 int * elf_nextscn (int *,int *) ;
 scalar_t__ entire_file ;
 int fileno (int *) ;
 int find_strings (char const*,int *,int ,int ) ;
 scalar_t__ fstat (int,struct stat*) ;
 int * gelf_getehdr (int *,TYPE_2__*) ;
 int * gelf_getshdr (int *,TYPE_1__*) ;
 int handle_binary (char const*,int *,int ) ;
 int lseek (int,int ,int ) ;
 int warnx (char*,char const*) ;

int
handle_elf(const char *name, FILE *pfile)
{
 struct stat buf;
 GElf_Ehdr elfhdr;
 GElf_Shdr shdr;
 Elf *elf;
 Elf_Scn *scn;
 int rc, fd;

 rc = 0;
 fd = fileno(pfile);
 if (fstat(fd, &buf) < 0)
  return (1);


 if (entire_file)
  return (handle_binary(name, pfile, buf.st_size));

 (void)lseek(fd, 0, SEEK_SET);
 elf = elf_begin(fd, ELF_C_READ, ((void*)0));
 if (elf_kind(elf) != ELF_K_ELF) {
  (void)elf_end(elf);
  return (handle_binary(name, pfile, buf.st_size));
 }

 if (gelf_getehdr(elf, &elfhdr) == ((void*)0)) {
  (void)elf_end(elf);
  warnx("%s: ELF file could not be processed", name);
  return (1);
 }

 if (elfhdr.e_shnum == 0 && elfhdr.e_type == ET_CORE) {
  (void)elf_end(elf);
  return (handle_binary(name, pfile, buf.st_size));
 } else {
  scn = ((void*)0);
  while ((scn = elf_nextscn(elf, scn)) != ((void*)0)) {
   if (gelf_getshdr(scn, &shdr) == ((void*)0))
    continue;
   if (shdr.sh_type != SHT_NOBITS &&
       (shdr.sh_flags & SHF_ALLOC) != 0) {
    rc = find_strings(name, pfile, shdr.sh_offset,
        shdr.sh_size);
   }
  }
 }
 (void)elf_end(elf);
 return (rc);
}
