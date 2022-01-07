
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PE_SECTION_INDEX_BSS ;
 int PE_SECTION_INDEX_DATA ;
 int PE_SECTION_INDEX_INVALID ;
 int PE_SECTION_INDEX_TEXT ;
 scalar_t__ strcmp (char const*,char*) ;

__attribute__((used)) static int
read_pe_section_index (const char *section_name)
{
  if (strcmp (section_name, ".text") == 0)
    {
      return PE_SECTION_INDEX_TEXT;
    }

  else if (strcmp (section_name, ".data") == 0)
    {
      return PE_SECTION_INDEX_DATA;
    }

  else if (strcmp (section_name, ".bss") == 0)
    {
      return PE_SECTION_INDEX_BSS;
    }

  else
    {
      return PE_SECTION_INDEX_INVALID;
    }
}
