
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct pubname_callback_param {int found; int sp_die; scalar_t__ file; int cu_die; int function; } ;
struct TYPE_3__ {int cu_offset; int die_offset; } ;
typedef TYPE_1__ Dwarf_Global ;
typedef int Dwarf ;


 int DWARF_CB_ABORT ;
 int DWARF_CB_OK ;
 scalar_t__ DW_TAG_subprogram ;
 scalar_t__ die_compare_name (int ,int ) ;
 int dwarf_decl_file (int ) ;
 scalar_t__ dwarf_offdie (int *,int ,int ) ;
 scalar_t__ dwarf_tag (int ) ;
 scalar_t__ strtailcmp (scalar_t__,int ) ;

__attribute__((used)) static int pubname_search_cb(Dwarf *dbg, Dwarf_Global *gl, void *data)
{
 struct pubname_callback_param *param = data;

 if (dwarf_offdie(dbg, gl->die_offset, param->sp_die)) {
  if (dwarf_tag(param->sp_die) != DW_TAG_subprogram)
   return DWARF_CB_OK;

  if (die_compare_name(param->sp_die, param->function)) {
   if (!dwarf_offdie(dbg, gl->cu_offset, param->cu_die))
    return DWARF_CB_OK;

   if (param->file &&
       strtailcmp(param->file, dwarf_decl_file(param->sp_die)))
    return DWARF_CB_OK;

   param->found = 1;
   return DWARF_CB_ABORT;
  }
 }

 return DWARF_CB_OK;
}
