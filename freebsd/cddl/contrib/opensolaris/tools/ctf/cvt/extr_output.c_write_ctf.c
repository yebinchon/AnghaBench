
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int tdata_t ;
struct stat {int st_mode; } ;
typedef int caddr_t ;
struct TYPE_3__ {int* e_ident; } ;
typedef TYPE_1__ GElf_Ehdr ;
typedef int Elf ;


 int CTF_SWAP_BYTES ;
 size_t EI_DATA ;
 int ELFDATA2LSB ;
 int ELFDATA2MSB ;
 int ELF_C_READ ;
 int ELF_C_WRITE ;
 int EV_CURRENT ;
 int O_CREAT ;
 int O_RDONLY ;
 int O_RDWR ;
 int O_TRUNC ;
 int close (int) ;
 int * elf_begin (int,int ,int *) ;
 int elf_end (int *) ;
 int elf_version (int ) ;
 int elfterminate (char const*,char*) ;
 int free (int ) ;
 scalar_t__ fstat (int,struct stat*) ;
 scalar_t__ gelf_getehdr (int *,TYPE_1__*) ;
 int make_ctf_data (int *,int *,char const*,size_t*,int) ;
 int open (char const*,int,...) ;
 int terminate (char*,char const*) ;
 int write_file (int *,char const*,int *,char const*,int ,size_t,int) ;

void
write_ctf(tdata_t *td, const char *curname, const char *newname, int flags)
{
 struct stat st;
 Elf *elf = ((void*)0);
 Elf *telf = ((void*)0);
 GElf_Ehdr ehdr;
 caddr_t data;
 size_t len;
 int fd = -1;
 int tfd = -1;
 int byteorder;

 (void) elf_version(EV_CURRENT);
 if ((fd = open(curname, O_RDONLY)) < 0 || fstat(fd, &st) < 0)
  terminate("%s: Cannot open for re-reading", curname);
 if ((elf = elf_begin(fd, ELF_C_READ, ((void*)0))) == ((void*)0))
  elfterminate(curname, "Cannot re-read");

 if ((tfd = open(newname, O_RDWR | O_CREAT | O_TRUNC, st.st_mode)) < 0)
  terminate("Cannot open temp file %s for writing", newname);
 if ((telf = elf_begin(tfd, ELF_C_WRITE, ((void*)0))) == ((void*)0))
  elfterminate(curname, "Cannot write");

 if (gelf_getehdr(elf, &ehdr)) {

  byteorder = ELFDATA2MSB;







  if (ehdr.e_ident[EI_DATA] == byteorder)
   flags &= ~CTF_SWAP_BYTES;
 }
 else
  elfterminate(curname, "Failed to get EHDR");

 data = make_ctf_data(td, elf, curname, &len, flags);
 write_file(elf, curname, telf, newname, data, len, flags);
 free(data);

 elf_end(telf);
 elf_end(elf);
 (void) close(fd);
 (void) close(tfd);
}
