
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct objfile {int dummy; } ;
typedef enum minimal_symbol_type { ____Placeholder_minimal_symbol_type } minimal_symbol_type ;
typedef int CORE_ADDR ;


 int SECT_OFF_BSS (struct objfile*) ;
 int SECT_OFF_DATA (struct objfile*) ;
 int SECT_OFF_TEXT (struct objfile*) ;







 int prim_record_minimal_symbol_and_info (char const*,int ,int,int *,int,int *,struct objfile*) ;

void
prim_record_minimal_symbol (const char *name, CORE_ADDR address,
       enum minimal_symbol_type ms_type,
       struct objfile *objfile)
{
  int section;

  switch (ms_type)
    {
    case 128:
    case 130:
    case 129:
      section = SECT_OFF_TEXT (objfile);
      break;
    case 133:
    case 131:
      section = SECT_OFF_DATA (objfile);
      break;
    case 134:
    case 132:
      section = SECT_OFF_BSS (objfile);
      break;
    default:
      section = -1;
    }

  prim_record_minimal_symbol_and_info (name, address, ms_type,
           ((void*)0), section, ((void*)0), objfile);
}
