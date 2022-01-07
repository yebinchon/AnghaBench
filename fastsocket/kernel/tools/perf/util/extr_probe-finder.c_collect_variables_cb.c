
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct variable_list {int vars; } ;
struct TYPE_2__ {int addr; int fb_ops; } ;
struct available_var_finder {int nvls; TYPE_1__ pf; scalar_t__ child; struct variable_list* vls; } ;
typedef int Dwarf_Die ;


 int DIE_FIND_CB_CONTINUE ;
 int DIE_FIND_CB_SIBLING ;
 int DW_TAG_formal_parameter ;
 int DW_TAG_variable ;
 int MAX_VAR_LEN ;
 int convert_variable_location (int *,int ,int ,int *) ;
 int die_get_varname (int *,char*,int) ;
 scalar_t__ dwarf_haspc (int *,int ) ;
 int dwarf_tag (int *) ;
 int pr_debug2 (char*,char*) ;
 int strlist__add (int ,char*) ;

__attribute__((used)) static int collect_variables_cb(Dwarf_Die *die_mem, void *data)
{
 struct available_var_finder *af = data;
 struct variable_list *vl;
 char buf[MAX_VAR_LEN];
 int tag, ret;

 vl = &af->vls[af->nvls - 1];

 tag = dwarf_tag(die_mem);
 if (tag == DW_TAG_formal_parameter ||
     tag == DW_TAG_variable) {
  ret = convert_variable_location(die_mem, af->pf.addr,
      af->pf.fb_ops, ((void*)0));
  if (ret == 0) {
   ret = die_get_varname(die_mem, buf, MAX_VAR_LEN);
   pr_debug2("Add new var: %s\n", buf);
   if (ret > 0)
    strlist__add(vl->vars, buf);
  }
 }

 if (af->child && dwarf_haspc(die_mem, af->pf.addr))
  return DIE_FIND_CB_CONTINUE;
 else
  return DIE_FIND_CB_SIBLING;
}
