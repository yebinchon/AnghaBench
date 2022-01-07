
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 unsigned int SECTION_WRITE ;
 scalar_t__ TARGET_64BIT ;
 int asm_out_file ;
 int default_elf_asm_named_section (char const*,unsigned int,int ) ;
 int fprintf (int ,char*,char const*,char*) ;
 scalar_t__ strcmp (char const*,char*) ;

__attribute__((used)) static void
i386_solaris_elf_named_section (const char *name, unsigned int flags,
    tree decl)
{



  if (TARGET_64BIT
      && strcmp (name, ".eh_frame") == 0)
    {
      fprintf (asm_out_file, "\t.section\t%s,\"%s\",@unwind\n", name,
        flags & SECTION_WRITE ? "aw" : "a");
      return;
    }
  default_elf_asm_named_section (name, flags, decl);
}
