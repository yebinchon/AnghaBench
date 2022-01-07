
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct symsrc {int fd; int elf; int name; } ;


 int close (int ) ;
 int elf_end (int ) ;
 int free (int ) ;

void symsrc__destroy(struct symsrc *ss)
{
 free(ss->name);
 elf_end(ss->elf);
 close(ss->fd);
}
