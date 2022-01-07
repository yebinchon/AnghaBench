
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int DECL_ATTRIBUTES (int ) ;
 unsigned int SECTION_CODE ;
 unsigned int SECTION_LINKONCE ;
 unsigned int SECTION_PE_SHARED ;
 unsigned int SECTION_WRITE ;
 int asm_out_file ;
 int fprintf (int ,char*,char const*,...) ;
 scalar_t__ lookup_attribute (char*,int ) ;

void
i386_pe_asm_named_section (const char *name, unsigned int flags,
      tree decl)
{
  char flagchars[8], *f = flagchars;

  if ((flags & (SECTION_CODE | SECTION_WRITE)) == 0)

    {
      *f++ ='d';
      *f++ ='r';
    }
  else
    {
      if (flags & SECTION_CODE)
        *f++ = 'x';
      if (flags & SECTION_WRITE)
        *f++ = 'w';
      if (flags & SECTION_PE_SHARED)
        *f++ = 's';
    }

  *f = '\0';

  fprintf (asm_out_file, "\t.section\t%s,\"%s\"\n", name, flagchars);

  if (flags & SECTION_LINKONCE)
    {






      bool discard = (flags & SECTION_CODE)
        || lookup_attribute ("selectany",
        DECL_ATTRIBUTES (decl));
      fprintf (asm_out_file, "\t.linkonce %s\n",
        (discard ? "discard" : "same_size"));
    }
}
