
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct readelf {int dbg; int cu_ver; int cu_osize; int cu_psize; } ;
struct loc_at {int la_cu_ver; int la_cu_osize; int la_cu_psize; void* la_lowpc; void* la_off; int la_at; } ;
typedef void* Dwarf_Unsigned ;
typedef int Dwarf_Signed ;
typedef void* Dwarf_Off ;
typedef scalar_t__ Dwarf_Half ;
typedef int Dwarf_Error ;
typedef int Dwarf_Die ;
typedef int Dwarf_Bool ;
typedef int Dwarf_Attribute ;


 scalar_t__ DW_AT_data_member_location ;
 scalar_t__ DW_AT_frame_base ;
 scalar_t__ DW_AT_location ;
 scalar_t__ DW_AT_return_addr ;
 scalar_t__ DW_AT_segment ;
 scalar_t__ DW_AT_static_link ;
 scalar_t__ DW_AT_string_length ;
 scalar_t__ DW_AT_use_location ;
 scalar_t__ DW_AT_vtable_elem_location ;
 int DW_DLV_ERROR ;
 int DW_DLV_OK ;
 scalar_t__ DW_FORM_data4 ;
 scalar_t__ DW_FORM_data8 ;
 scalar_t__ DW_FORM_sec_offset ;
 int EXIT_FAILURE ;
 int dwarf_attrlist (int ,int **,int*,int *) ;
 int dwarf_child (int ,int *,int *) ;
 int dwarf_errmsg (int ) ;
 int dwarf_formudata (int ,void**,int *) ;
 int dwarf_get_die_infotypes_flag (int ) ;
 int dwarf_global_formref (int ,void**,int *) ;
 int dwarf_siblingof_b (int ,int ,int *,int ,int *) ;
 int dwarf_whatattr (int ,scalar_t__*,int *) ;
 int dwarf_whatform (int ,scalar_t__*,int *) ;
 int errx (int ,char*) ;
 struct loc_at* realloc (struct loc_at*,size_t) ;
 int warnx (char*,int ) ;

__attribute__((used)) static void
search_loclist_at(struct readelf *re, Dwarf_Die die, Dwarf_Unsigned lowpc,
    struct loc_at **la_list, size_t *la_list_len, size_t *la_list_cap)
{
 struct loc_at *la;
 Dwarf_Attribute *attr_list;
 Dwarf_Die ret_die;
 Dwarf_Unsigned off;
 Dwarf_Off ref;
 Dwarf_Signed attr_count;
 Dwarf_Half attr, form;
 Dwarf_Bool is_info;
 Dwarf_Error de;
 int i, ret;

 is_info = dwarf_get_die_infotypes_flag(die);

 if ((ret = dwarf_attrlist(die, &attr_list, &attr_count, &de)) !=
     DW_DLV_OK) {
  if (ret == DW_DLV_ERROR)
   warnx("dwarf_attrlist failed: %s", dwarf_errmsg(de));
  goto cont_search;
 }
 for (i = 0; i < attr_count; i++) {
  if (dwarf_whatattr(attr_list[i], &attr, &de) != DW_DLV_OK) {
   warnx("dwarf_whatattr failed: %s", dwarf_errmsg(de));
   continue;
  }
  if (attr != DW_AT_location &&
      attr != DW_AT_string_length &&
      attr != DW_AT_return_addr &&
      attr != DW_AT_data_member_location &&
      attr != DW_AT_frame_base &&
      attr != DW_AT_segment &&
      attr != DW_AT_static_link &&
      attr != DW_AT_use_location &&
      attr != DW_AT_vtable_elem_location)
   continue;
  if (dwarf_whatform(attr_list[i], &form, &de) != DW_DLV_OK) {
   warnx("dwarf_whatform failed: %s", dwarf_errmsg(de));
   continue;
  }
  if (form == DW_FORM_data4 || form == DW_FORM_data8) {
   if (dwarf_formudata(attr_list[i], &off, &de) !=
       DW_DLV_OK) {
    warnx("dwarf_formudata failed: %s",
        dwarf_errmsg(de));
    continue;
   }
  } else if (form == DW_FORM_sec_offset) {
   if (dwarf_global_formref(attr_list[i], &ref, &de) !=
       DW_DLV_OK) {
    warnx("dwarf_global_formref failed: %s",
        dwarf_errmsg(de));
    continue;
   }
   off = ref;
  } else
   continue;

  if (*la_list_cap == *la_list_len) {
   *la_list = realloc(*la_list,
       *la_list_cap * 2 * sizeof(**la_list));
   if (la_list == ((void*)0))
    errx(EXIT_FAILURE, "realloc failed");
   *la_list_cap *= 2;
  }
  la = &((*la_list)[*la_list_len]);
  la->la_at = attr_list[i];
  la->la_off = off;
  la->la_lowpc = lowpc;
  la->la_cu_psize = re->cu_psize;
  la->la_cu_osize = re->cu_osize;
  la->la_cu_ver = re->cu_ver;
  (*la_list_len)++;
 }

cont_search:

 ret = dwarf_child(die, &ret_die, &de);
 if (ret == DW_DLV_ERROR)
  warnx("dwarf_child: %s", dwarf_errmsg(de));
 else if (ret == DW_DLV_OK)
  search_loclist_at(re, ret_die, lowpc, la_list,
      la_list_len, la_list_cap);


 ret = dwarf_siblingof_b(re->dbg, die, &ret_die, is_info, &de);
 if (ret == DW_DLV_ERROR)
  warnx("dwarf_siblingof: %s", dwarf_errmsg(de));
 else if (ret == DW_DLV_OK)
  search_loclist_at(re, ret_die, lowpc, la_list,
      la_list_len, la_list_cap);
}
