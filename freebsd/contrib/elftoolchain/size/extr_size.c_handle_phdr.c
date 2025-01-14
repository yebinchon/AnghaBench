
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
typedef char* uint32_t ;
struct TYPE_3__ {scalar_t__ p_memsz; scalar_t__ p_filesz; scalar_t__ p_vaddr; scalar_t__ p_type; int p_flags; } ;
typedef TYPE_1__ GElf_Phdr ;
typedef int GElf_Ehdr ;
typedef int Elf ;


 int BUF_SIZE ;
 int PF_W ;
 int PF_X ;
 scalar_t__ PT_LOAD ;
 scalar_t__ STYLE_SYSV ;
 int data_size ;
 int radix ;
 int snprintf (char*,int,char*,char const*,char*,char*) ;
 scalar_t__ style ;
 int tbl_append () ;
 int tbl_print (char*,int ) ;
 int tbl_print_num (scalar_t__,int ,int) ;
 int text_size ;
 int text_size_total ;

__attribute__((used)) static void
handle_phdr(Elf *elf, GElf_Ehdr *elfhdr, GElf_Phdr *phdr,
    uint32_t idx, const char *name)
{
 uint64_t addr, size;
 int split;
 char buf[BUF_SIZE];

 if (elf == ((void*)0) || elfhdr == ((void*)0) || phdr == ((void*)0))
  return;

 split = (phdr->p_memsz > 0) && (phdr->p_filesz > 0) &&
     (phdr->p_memsz > phdr->p_filesz);

 if (style == STYLE_SYSV) {
  (void) snprintf(buf, BUF_SIZE,
      "%s%d%s", name, idx, (split ? "a" : ""));
  tbl_append();
  tbl_print(buf, 0);
  tbl_print_num(phdr->p_filesz, radix, 1);
  tbl_print_num(phdr->p_vaddr, radix, 2);
  text_size_total += phdr->p_filesz;
  if (split) {
   size = phdr->p_memsz - phdr->p_filesz;
   addr = phdr->p_vaddr + phdr->p_filesz;
   (void) snprintf(buf, BUF_SIZE, "%s%d%s", name,
       idx, "b");
   text_size_total += phdr->p_memsz - phdr->p_filesz;
   tbl_append();
   tbl_print(buf, 0);
   tbl_print_num(size, radix, 1);
   tbl_print_num(addr, radix, 2);
  }
 } else {
  if (phdr->p_type != PT_LOAD)
   return;
  if ((phdr->p_flags & PF_W) && !(phdr->p_flags & PF_X)) {
   data_size += phdr->p_filesz;
   if (split)
    data_size += phdr->p_memsz - phdr->p_filesz;
  } else {
   text_size += phdr->p_filesz;
   if (split)
    text_size += phdr->p_memsz - phdr->p_filesz;
  }
 }
}
