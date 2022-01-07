
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t err_error; char* err_func; int err_line; scalar_t__ err_msg; int err_elferror; } ;
typedef TYPE_1__ Dwarf_Error ;


 size_t DW_DLE_ELF ;
 size_t DW_DLE_NONE ;
 size_t DW_DLE_NUM ;
 char const** _libdwarf_errors ;
 char* elf_errmsg (int ) ;
 int snprintf (scalar_t__,int,char*,char const*,char*,int) ;

const char *
dwarf_errmsg_(Dwarf_Error *error)
{
 const char *p;

 if (error == ((void*)0))
  return ((void*)0);

 if (error->err_error < 0 || error->err_error >= DW_DLE_NUM)
  return _libdwarf_errors[DW_DLE_NUM];
 else if (error->err_error == DW_DLE_NONE)
  return _libdwarf_errors[DW_DLE_NONE];
 else
  p = _libdwarf_errors[error->err_error];

 if (error->err_error == DW_DLE_ELF)
  snprintf(error->err_msg, sizeof(error->err_msg),
      "ELF error : %s [%s(%d)]", elf_errmsg(error->err_elferror),
      error->err_func, error->err_line);
 else
  snprintf(error->err_msg, sizeof(error->err_msg),
      "%s [%s(%d)]", p, error->err_func, error->err_line);

 return (const char *) error->err_msg;
}
