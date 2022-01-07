
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct file {TYPE_1__* f_op; } ;
struct elfhdr {scalar_t__ e_type; int e_ident; } ;
struct TYPE_2__ {int mmap; } ;


 int ELFMAG ;
 scalar_t__ ET_DYN ;
 scalar_t__ ET_EXEC ;
 int SELFMAG ;
 int elf_check_arch (struct elfhdr*) ;
 int elf_check_fdpic (struct elfhdr*) ;
 scalar_t__ memcmp (int ,int ,int ) ;

__attribute__((used)) static int is_elf_fdpic(struct elfhdr *hdr, struct file *file)
{
 if (memcmp(hdr->e_ident, ELFMAG, SELFMAG) != 0)
  return 0;
 if (hdr->e_type != ET_EXEC && hdr->e_type != ET_DYN)
  return 0;
 if (!elf_check_arch(hdr) || !elf_check_fdpic(hdr))
  return 0;
 if (!file->f_op || !file->f_op->mmap)
  return 0;
 return 1;
}
