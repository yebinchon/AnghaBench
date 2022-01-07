
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Dwarf_Die ;


 int E2BIG ;
 int die_get_typename (int *,char*,int) ;
 char* dwarf_diename (int *) ;
 int pr_debug (char*) ;
 int snprintf (char*,int,char*,...) ;

int die_get_varname(Dwarf_Die *vr_die, char *buf, int len)
{
 int ret, ret2;

 ret = die_get_typename(vr_die, buf, len);
 if (ret < 0) {
  pr_debug("Failed to get type, make it unknown.\n");
  ret = snprintf(buf, len, "(unknown_type)");
 }
 if (ret > 0) {
  ret2 = snprintf(buf + ret, len - ret, "\t%s",
    dwarf_diename(vr_die));
  ret = (ret2 >= len - ret) ? -E2BIG : ret2 + ret;
 }
 return ret;
}
