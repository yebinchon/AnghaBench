
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lang_t ;
__attribute__((used)) static const char *
lang_to_string (lang_t lang)
{
  switch (lang)
    {
    case 134: return "C";
    case 129: return "Pascal";
    case 132: return "Fortran";
    case 135: return "Assembler";
    case 131: return "Machine";
    case 130: return "Nil";
    case 136: return "Ada";
    case 128: return "Pl1";
    case 133: return "Cobol";
    }

  return "Unknown language";
}
