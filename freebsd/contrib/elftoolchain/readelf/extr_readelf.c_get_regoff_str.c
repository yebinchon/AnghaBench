
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct readelf {int dummy; } ;
typedef int rs ;
typedef int intmax_t ;
typedef scalar_t__ Dwarf_Half ;
typedef scalar_t__ Dwarf_Addr ;


 scalar_t__ DW_FRAME_CFA_COL ;
 scalar_t__ DW_FRAME_REG_INITIAL_VALUE ;
 scalar_t__ DW_FRAME_UNDEFINED_VAL ;
 char* dwarf_regname (struct readelf*,scalar_t__) ;
 int snprintf (char*,int,char*,...) ;

__attribute__((used)) static char *
get_regoff_str(struct readelf *re, Dwarf_Half reg, Dwarf_Addr off)
{
 static char rs[16];

 if (reg == DW_FRAME_UNDEFINED_VAL || reg == DW_FRAME_REG_INITIAL_VALUE)
  snprintf(rs, sizeof(rs), "%c", 'u');
 else if (reg == DW_FRAME_CFA_COL)
  snprintf(rs, sizeof(rs), "c%+jd", (intmax_t) off);
 else
  snprintf(rs, sizeof(rs), "%s%+jd", dwarf_regname(re, reg),
      (intmax_t) off);

 return (rs);
}
