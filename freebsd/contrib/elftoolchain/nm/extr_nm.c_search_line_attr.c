
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
struct var_info_head {int dummy; } ;
struct var_info_entry {int line; int lowpc; int highpc; struct var_info_entry* file; int * name; int addr; } ;
typedef struct var_info_head func_info_head ;
struct func_info_entry {int line; int lowpc; int highpc; struct func_info_entry* file; int * name; int addr; } ;
struct TYPE_4__ {scalar_t__ bl_data; } ;
typedef int Dwarf_Unsigned ;
typedef scalar_t__ Dwarf_Signed ;
typedef scalar_t__ Dwarf_Half ;
typedef int Dwarf_Error ;
typedef int Dwarf_Die ;
typedef int Dwarf_Debug ;
typedef scalar_t__ Dwarf_Bool ;
typedef TYPE_1__ Dwarf_Block ;
typedef int Dwarf_Attribute ;


 int DW_AT_artificial ;
 int DW_AT_decl_file ;
 int DW_AT_decl_line ;
 int DW_AT_declaration ;
 int DW_AT_external ;
 int DW_AT_high_pc ;
 int DW_AT_location ;
 int DW_AT_low_pc ;
 int DW_DLA_DIE ;
 int DW_DLV_ERROR ;
 int DW_DLV_OK ;
 scalar_t__ DW_OP_addr ;
 scalar_t__ DW_TAG_entry_point ;
 scalar_t__ DW_TAG_inlined_subroutine ;
 scalar_t__ DW_TAG_subprogram ;
 scalar_t__ DW_TAG_variable ;
 int SLIST_INSERT_HEAD (struct var_info_head*,struct var_info_entry*,int ) ;
 struct var_info_entry* calloc (int,int) ;
 int dwarf_attr (int ,int ,int *,int *) ;
 int dwarf_attrval_flag (int ,int ,scalar_t__*,int *) ;
 int dwarf_attrval_unsigned (int ,int ,int*,int *) ;
 int dwarf_child (int ,int *,int *) ;
 int dwarf_dealloc (int ,int ,int ) ;
 int dwarf_errmsg (int ) ;
 int dwarf_formblock (int ,TYPE_1__**,int *) ;
 int dwarf_siblingof (int ,int ,int *,int *) ;
 int dwarf_tag (int ,scalar_t__*,int *) ;
 int entries ;
 void* find_object_name (int ,int ) ;
 int free (struct var_info_entry*) ;
 int get_block_value (int ,TYPE_1__*) ;
 void* strdup (char*) ;
 int warn (char*) ;
 int warnx (char*,int ) ;

__attribute__((used)) static void
search_line_attr(Dwarf_Debug dbg, struct func_info_head *func_info,
    struct var_info_head *var_info, Dwarf_Die die, char **src_files,
    Dwarf_Signed filecount)
{
 Dwarf_Attribute at;
 Dwarf_Unsigned udata;
 Dwarf_Half tag;
 Dwarf_Block *block;
 Dwarf_Bool flag;
 Dwarf_Die ret_die;
 Dwarf_Error de;
 struct func_info_entry *func;
 struct var_info_entry *var;
 int ret;

 if (dwarf_tag(die, &tag, &de) != DW_DLV_OK) {
  warnx("dwarf_tag failed: %s", dwarf_errmsg(de));
  goto cont_search;
 }


 if (tag != DW_TAG_subprogram && tag != DW_TAG_entry_point &&
     tag != DW_TAG_inlined_subroutine && tag != DW_TAG_variable)
  goto cont_search;

 if (tag == DW_TAG_variable) {


  if (dwarf_attrval_flag(die, DW_AT_artificial, &flag, &de) ==
      DW_DLV_OK && flag)
   goto cont_search;


  if (dwarf_attrval_flag(die, DW_AT_declaration, &flag, &de) ==
      DW_DLV_OK && flag)
   goto cont_search;


  if (dwarf_attrval_flag(die, DW_AT_external, &flag, &de) !=
      DW_DLV_OK || !flag)
   goto cont_search;

  if ((var = calloc(1, sizeof(*var))) == ((void*)0)) {
   warn("calloc failed");
   goto cont_search;
  }

  if (dwarf_attrval_unsigned(die, DW_AT_decl_file, &udata,
      &de) == DW_DLV_OK && udata > 0 &&
      (Dwarf_Signed) (udata - 1) < filecount) {
   var->file = strdup(src_files[udata - 1]);
   if (var->file == ((void*)0)) {
    warn("strdup");
    free(var);
    goto cont_search;
   }
  }

  if (dwarf_attrval_unsigned(die, DW_AT_decl_line, &udata, &de) ==
      DW_DLV_OK)
   var->line = udata;

  var->name = find_object_name(dbg, die);
  if (var->name == ((void*)0)) {
   if (var->file)
    free(var->file);
   free(var);
   goto cont_search;
  }

  if (dwarf_attr(die, DW_AT_location, &at, &de) == DW_DLV_OK &&
      dwarf_formblock(at, &block, &de) == DW_DLV_OK) {





   if (*((uint8_t *)block->bl_data) == DW_OP_addr)
    var->addr = get_block_value(dbg, block);
  }

  SLIST_INSERT_HEAD(var_info, var, entries);

 } else {

  if ((func = calloc(1, sizeof(*func))) == ((void*)0)) {
   warn("calloc failed");
   goto cont_search;
  }






  if (dwarf_attrval_unsigned(die, DW_AT_decl_file, &udata,
      &de) == DW_DLV_OK && udata > 0 &&
      (Dwarf_Signed) (udata - 1) < filecount) {
   func->file = strdup(src_files[udata - 1]);
   if (func->file == ((void*)0)) {
    warn("strdup");
    free(func);
    goto cont_search;
   }
  }

  if (dwarf_attrval_unsigned(die, DW_AT_decl_line, &udata, &de) ==
      DW_DLV_OK)
   func->line = udata;

  func->name = find_object_name(dbg, die);
  if (func->name == ((void*)0)) {
   if (func->file)
    free(func->file);
   free(func);
   goto cont_search;
  }

  if (dwarf_attrval_unsigned(die, DW_AT_low_pc, &udata, &de) ==
      DW_DLV_OK)
   func->lowpc = udata;
  if (dwarf_attrval_unsigned(die, DW_AT_high_pc, &udata, &de) ==
      DW_DLV_OK)
   func->highpc = udata;

  SLIST_INSERT_HEAD(func_info, func, entries);
 }

cont_search:


 ret = dwarf_child(die, &ret_die, &de);
 if (ret == DW_DLV_ERROR)
  warnx("dwarf_child: %s", dwarf_errmsg(de));
 else if (ret == DW_DLV_OK)
  search_line_attr(dbg, func_info, var_info, ret_die, src_files,
      filecount);


 ret = dwarf_siblingof(dbg, die, &ret_die, &de);
 if (ret == DW_DLV_ERROR)
  warnx("dwarf_siblingof: %s", dwarf_errmsg(de));
 else if (ret == DW_DLV_OK)
  search_line_attr(dbg, func_info, var_info, ret_die, src_files,
      filecount);

 dwarf_dealloc(dbg, die, DW_DLA_DIE);
}
