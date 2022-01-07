
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int offset; } ;
struct dwarf2_cu {TYPE_1__ header; } ;
struct attribute {int form; } ;


 unsigned int DW_ADDR (struct attribute*) ;






 unsigned int DW_UNSND (struct attribute*) ;
 int complaint (int *,char*,int ) ;
 int dwarf_form_name (int) ;
 int symfile_complaints ;

__attribute__((used)) static unsigned int
dwarf2_get_ref_die_offset (struct attribute *attr, struct dwarf2_cu *cu)
{
  unsigned int result = 0;

  switch (attr->form)
    {
    case 129:
      result = DW_ADDR (attr);
      break;
    case 133:
    case 132:
    case 131:
    case 130:
    case 128:
      result = cu->header.offset + DW_UNSND (attr);
      break;
    default:
      complaint (&symfile_complaints,
   "unsupported die ref attribute form: '%s'",
   dwarf_form_name (attr->form));
    }
  return result;
}
