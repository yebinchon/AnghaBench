
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct objfile {int flags; } ;


 int OBJF_REORDERED ;

__attribute__((used)) static void
elf_symfile_init (struct objfile *objfile)
{



  objfile->flags |= OBJF_REORDERED;
}
