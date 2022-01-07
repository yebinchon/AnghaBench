
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gdbarch_tdep {int jb_pc_offset; } ;
struct gdbarch_info {int dummy; } ;
struct gdbarch {int dummy; } ;


 struct gdbarch_tdep* gdbarch_tdep (struct gdbarch*) ;
 int i386_elf_init_abi (struct gdbarch_info,struct gdbarch*) ;

__attribute__((used)) static void
i386gnu_init_abi (struct gdbarch_info info, struct gdbarch *gdbarch)
{
  struct gdbarch_tdep *tdep = gdbarch_tdep (gdbarch);


  i386_elf_init_abi (info, gdbarch);

  tdep->jb_pc_offset = 20;
}
