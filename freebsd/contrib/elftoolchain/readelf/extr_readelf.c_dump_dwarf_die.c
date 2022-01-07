
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int unk_tag ;
typedef int unk_attr ;
typedef int uintmax_t ;
typedef int uint8_t ;
struct readelf {int dbg; scalar_t__ (* dw_decode ) (int**,int) ;} ;
typedef int intmax_t ;
struct TYPE_6__ {int* bl_data; scalar_t__ bl_len; } ;
struct TYPE_5__ {int * signature; } ;
typedef scalar_t__ Dwarf_Unsigned ;
typedef int Dwarf_Signed ;
typedef TYPE_1__ Dwarf_Sig8 ;
typedef int* Dwarf_Ptr ;
typedef scalar_t__ Dwarf_Off ;
typedef int Dwarf_Half ;
typedef int Dwarf_Error ;
typedef int Dwarf_Die ;
typedef int Dwarf_Bool ;
typedef TYPE_2__ Dwarf_Block ;
typedef int Dwarf_Attribute ;
typedef scalar_t__ Dwarf_Addr ;





 int DW_AT_high_pc ;
 int DW_DLA_DIE ;
 int DW_DLV_ERROR ;
 int DW_DLV_OK ;
 int dump_dwarf_block (struct readelf*,int*,scalar_t__) ;
 int dwarf_attrlist (int ,int **,int*,int *) ;
 int dwarf_attroffset (int ,scalar_t__*,int *) ;
 int dwarf_attrval_unsigned (int ,int,scalar_t__*,int *) ;
 int dwarf_child (int ,int *,int *) ;
 int dwarf_dealloc (int ,int ,int ) ;
 int dwarf_die_CU_offset_range (int ,scalar_t__*,scalar_t__*,int *) ;
 int dwarf_die_abbrev_code (int ) ;
 int dwarf_dieoffset (int ,scalar_t__*,int *) ;
 int dwarf_errmsg (int ) ;
 int dwarf_formaddr (int ,scalar_t__*,int *) ;
 int dwarf_formblock (int ,TYPE_2__**,int *) ;
 int dwarf_formexprloc (int ,scalar_t__*,int**,int *) ;
 int dwarf_formflag (int ,int *,int *) ;
 int dwarf_formref (int ,scalar_t__*,int *) ;
 int dwarf_formsdata (int ,int*,int *) ;
 int dwarf_formsig8 (int ,TYPE_1__*,int *) ;
 int dwarf_formstring (int ,char**,int *) ;
 int dwarf_formudata (int ,scalar_t__*,int *) ;
 int dwarf_get_ATE_name (scalar_t__,char const**) ;
 int dwarf_get_AT_name (int,char const**) ;
 int dwarf_get_LANG_name (scalar_t__,char const**) ;
 int dwarf_get_TAG_name (int,char const**) ;
 int dwarf_get_die_infotypes_flag (int ) ;
 int dwarf_global_formref (int ,scalar_t__*,int *) ;
 int dwarf_siblingof_b (int ,int ,int *,int ,int *) ;
 int dwarf_tag (int ,int*,int *) ;
 int dwarf_whatattr (int ,int*,int *) ;
 int dwarf_whatform (int ,int*,int *) ;
 int printf (char*,...) ;
 int putchar (char) ;
 int snprintf (char*,int,char*,int) ;
 size_t strlen (char*) ;
 scalar_t__ stub1 (int**,int) ;
 int warnx (char*,int ) ;

__attribute__((used)) static void
dump_dwarf_die(struct readelf *re, Dwarf_Die die, int level)
{
 Dwarf_Attribute *attr_list;
 Dwarf_Die ret_die;
 Dwarf_Off dieoff, cuoff, culen, attroff;
 Dwarf_Unsigned ate, lang, v_udata, v_sig;
 Dwarf_Signed attr_count, v_sdata;
 Dwarf_Off v_off;
 Dwarf_Addr v_addr;
 Dwarf_Half tag, attr, form;
 Dwarf_Block *v_block;
 Dwarf_Bool v_bool, is_info;
 Dwarf_Sig8 v_sig8;
 Dwarf_Error de;
 Dwarf_Ptr v_expr;
 const char *tag_str, *attr_str, *ate_str, *lang_str;
 char unk_tag[32], unk_attr[32];
 char *v_str;
 uint8_t *b, *p;
 int i, j, abc, ret;

 if (dwarf_dieoffset(die, &dieoff, &de) != DW_DLV_OK) {
  warnx("dwarf_dieoffset failed: %s", dwarf_errmsg(de));
  goto cont_search;
 }

 printf(" <%d><%jx>: ", level, (uintmax_t) dieoff);

 if (dwarf_die_CU_offset_range(die, &cuoff, &culen, &de) != DW_DLV_OK) {
  warnx("dwarf_die_CU_offset_range failed: %s",
        dwarf_errmsg(de));
  cuoff = 0;
 }

 abc = dwarf_die_abbrev_code(die);
 if (dwarf_tag(die, &tag, &de) != DW_DLV_OK) {
  warnx("dwarf_tag failed: %s", dwarf_errmsg(de));
  goto cont_search;
 }
 if (dwarf_get_TAG_name(tag, &tag_str) != DW_DLV_OK) {
  snprintf(unk_tag, sizeof(unk_tag), "[Unknown Tag: %#x]", tag);
  tag_str = unk_tag;
 }

 printf("Abbrev Number: %d (%s)\n", abc, tag_str);

 if ((ret = dwarf_attrlist(die, &attr_list, &attr_count, &de)) !=
     DW_DLV_OK) {
  if (ret == DW_DLV_ERROR)
   warnx("dwarf_attrlist failed: %s", dwarf_errmsg(de));
  goto cont_search;
 }

 for (i = 0; i < attr_count; i++) {
  if (dwarf_whatform(attr_list[i], &form, &de) != DW_DLV_OK) {
   warnx("dwarf_whatform failed: %s", dwarf_errmsg(de));
   continue;
  }
  if (dwarf_whatattr(attr_list[i], &attr, &de) != DW_DLV_OK) {
   warnx("dwarf_whatattr failed: %s", dwarf_errmsg(de));
   continue;
  }
  if (dwarf_get_AT_name(attr, &attr_str) != DW_DLV_OK) {
   snprintf(unk_attr, sizeof(unk_attr),
       "[Unknown AT: %#x]", attr);
   attr_str = unk_attr;
  }
  if (dwarf_attroffset(attr_list[i], &attroff, &de) !=
      DW_DLV_OK) {
   warnx("dwarf_attroffset failed: %s", dwarf_errmsg(de));
   attroff = 0;
  }
  printf("    <%jx>   %-18s: ", (uintmax_t) attroff, attr_str);
  switch (form) {
  case 135:
  case 131:
   if (dwarf_global_formref(attr_list[i], &v_off, &de) !=
       DW_DLV_OK) {
    warnx("dwarf_global_formref failed: %s",
        dwarf_errmsg(de));
    continue;
   }
   if (form == 135)
    printf("<0x%jx>", (uintmax_t) v_off);
   else
    printf("0x%jx", (uintmax_t) v_off);
   break;

  case 139:
  case 138:
  case 137:
  case 136:
  case 133:
   if (dwarf_formref(attr_list[i], &v_off, &de) !=
       DW_DLV_OK) {
    warnx("dwarf_formref failed: %s",
        dwarf_errmsg(de));
    continue;
   }
   v_off += cuoff;
   printf("<0x%jx>", (uintmax_t) v_off);
   break;

  case 151:
   if (dwarf_formaddr(attr_list[i], &v_addr, &de) !=
       DW_DLV_OK) {
    warnx("dwarf_formaddr failed: %s",
        dwarf_errmsg(de));
    continue;
   }
   printf("%#jx", (uintmax_t) v_addr);
   break;

  case 146:
  case 145:
  case 144:
  case 143:
  case 128:
   if (dwarf_formudata(attr_list[i], &v_udata, &de) !=
       DW_DLV_OK) {
    warnx("dwarf_formudata failed: %s",
        dwarf_errmsg(de));
    continue;
   }
   if (attr == DW_AT_high_pc)
    printf("0x%jx", (uintmax_t) v_udata);
   else
    printf("%ju", (uintmax_t) v_udata);
   break;

  case 132:
   if (dwarf_formsdata(attr_list[i], &v_sdata, &de) !=
       DW_DLV_OK) {
    warnx("dwarf_formudata failed: %s",
        dwarf_errmsg(de));
    continue;
   }
   printf("%jd", (intmax_t) v_sdata);
   break;

  case 141:
   if (dwarf_formflag(attr_list[i], &v_bool, &de) !=
       DW_DLV_OK) {
    warnx("dwarf_formflag failed: %s",
        dwarf_errmsg(de));
    continue;
   }
   printf("%jd", (intmax_t) v_bool);
   break;

  case 140:
   putchar('1');
   break;

  case 130:
  case 129:
   if (dwarf_formstring(attr_list[i], &v_str, &de) !=
       DW_DLV_OK) {
    warnx("dwarf_formstring failed: %s",
        dwarf_errmsg(de));
    continue;
   }
   if (form == 130)
    printf("%s", v_str);
   else
    printf("(indirect string) %s", v_str);
   break;

  case 150:
  case 149:
  case 148:
  case 147:
   if (dwarf_formblock(attr_list[i], &v_block, &de) !=
       DW_DLV_OK) {
    warnx("dwarf_formblock failed: %s",
        dwarf_errmsg(de));
    continue;
   }
   printf("%ju byte block:", (uintmax_t) v_block->bl_len);
   b = v_block->bl_data;
   for (j = 0; (Dwarf_Unsigned) j < v_block->bl_len; j++)
    printf(" %x", b[j]);
   printf("\t(");
   dump_dwarf_block(re, v_block->bl_data, v_block->bl_len);
   putchar(')');
   break;

  case 142:
   if (dwarf_formexprloc(attr_list[i], &v_udata, &v_expr,
       &de) != DW_DLV_OK) {
    warnx("dwarf_formexprloc failed: %s",
        dwarf_errmsg(de));
    continue;
   }
   printf("%ju byte block:", (uintmax_t) v_udata);
   b = v_expr;
   for (j = 0; (Dwarf_Unsigned) j < v_udata; j++)
    printf(" %x", b[j]);
   printf("\t(");
   dump_dwarf_block(re, v_expr, v_udata);
   putchar(')');
   break;

  case 134:
   if (dwarf_formsig8(attr_list[i], &v_sig8, &de) !=
       DW_DLV_OK) {
    warnx("dwarf_formsig8 failed: %s",
        dwarf_errmsg(de));
    continue;
   }
   p = (uint8_t *)(uintptr_t) &v_sig8.signature[0];
   v_sig = re->dw_decode(&p, 8);
   printf("signature: 0x%jx", (uintmax_t) v_sig);
  }
  switch (attr) {
  case 161:
   if (dwarf_attrval_unsigned(die, attr, &ate, &de) !=
       DW_DLV_OK)
    break;
   if (dwarf_get_ATE_name(ate, &ate_str) != DW_DLV_OK)
    ate_str = "DW_ATE_UNKNOWN";
   printf("\t(%s)", &ate_str[strlen("DW_ATE_")]);
   break;

  case 159:
   if (dwarf_attrval_unsigned(die, attr, &lang, &de) !=
       DW_DLV_OK)
    break;
   if (dwarf_get_LANG_name(lang, &lang_str) != DW_DLV_OK)
    break;
   printf("\t(%s)", &lang_str[strlen("DW_LANG_")]);
   break;

  case 158:
  case 154:
  case 157:
  case 162:
  case 160:
  case 156:
  case 155:
  case 153:
  case 152:
   switch (form) {
   case 144:
   case 143:
   case 131:
    printf("\t(location list)");
    break;
   default:
    break;
   }

  default:
   break;
  }
  putchar('\n');
 }


cont_search:

 ret = dwarf_child(die, &ret_die, &de);
 if (ret == DW_DLV_ERROR)
  warnx("dwarf_child: %s", dwarf_errmsg(de));
 else if (ret == DW_DLV_OK)
  dump_dwarf_die(re, ret_die, level + 1);


 is_info = dwarf_get_die_infotypes_flag(die);
 ret = dwarf_siblingof_b(re->dbg, die, &ret_die, is_info, &de);
 if (ret == DW_DLV_ERROR)
  warnx("dwarf_siblingof: %s", dwarf_errmsg(de));
 else if (ret == DW_DLV_OK)
  dump_dwarf_die(re, ret_die, level);

 dwarf_dealloc(re->dbg, die, DW_DLA_DIE);
}
