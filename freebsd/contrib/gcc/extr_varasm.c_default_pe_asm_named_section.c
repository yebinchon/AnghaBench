
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 unsigned int SECTION_CODE ;
 unsigned int SECTION_LINKONCE ;
 int asm_out_file ;
 int default_coff_asm_named_section (char const*,unsigned int,int ) ;
 int fprintf (int ,char*,char*) ;

void
default_pe_asm_named_section (const char *name, unsigned int flags,
         tree decl)
{
  default_coff_asm_named_section (name, flags, decl);

  if (flags & SECTION_LINKONCE)
    {



      fprintf (asm_out_file, "\t.linkonce %s\n",
        (flags & SECTION_CODE ? "discard" : "same_size"));
    }
}
